from django.shortcuts import redirect, render,get_object_or_404

from userapp.models import Bidding, UserRegisterModel
from adminapp.models import AssetsModel

#importing resources for messages.
from django.contrib import messages

#importing resources for search in search box.
from django.db.models import Q


def user_main(request):
    if request.method=="POST":
        name=request.POST.get("username")
        password=request.POST.get("password")
        try:
            check=UserRegisterModel.objects.get(email=name,password=password)
            request.session["user_id"]=check.user_id
            messages.success(request,'Login Successful')
            return redirect('user_home')
        except:
            messages.error(request,'Invalid Login')
    return render(request,'user/user.html')




def user_reg(request):
    if request.method == "POST" and request.FILES['image']:
        username = request.POST.get('username')
        mobile = request.POST.get('mobile')
        email = request.POST.get('email')
        profession = request.POST.get('profession')
        address = request.POST.get('address')
        password = request.POST.get('password')
        profile_image = request.FILES['image']
        
        if UserRegisterModel.objects.filter(email=email).exists():
            messages.error (request, "Email already exist")
        else:
            user=UserRegisterModel.objects.create(username=username,mobile=mobile,email=email,profession=profession,address=address,password=password,profile_image=profile_image)
            user.save()
            messages.success(request, "Account created successful")

    return render(request,'user/userregistration.html')




def user_home(request):
    a=AssetsModel.objects.count()
    b=AssetsModel.objects.filter(asset_category='Vehicle').count()
    c=AssetsModel.objects.filter(asset_category='Property').count()
    return render(request,'user/user-home.html',{'a':a,'b':b,'c':c})

def user_assets(request):
    bids= AssetsModel.objects.all()
    
    if request.method=="POST":
        search=request.POST.get("search")
        bids=AssetsModel.objects.filter( Q(asset_category__icontains=search) | Q(asset_name__icontains=search) | Q(asset_bank__icontains=search)| Q(asset_price__icontains=search)| Q(posted_date__icontains=search) )
    return render(request,'user/user-assets-backend.html',{'asset':bids})

def user_view_details(request,id):
    user_id = request.session["user_id"]
    asset_id = AssetsModel.objects.filter(asset_id=id)
    
    if request.method=="POST":
        bid_price = request.POST.get("bidprice")
        
        bid = Bidding.objects.create(asset_id=id,user_id=user_id,bid_price=bid_price)
        bid.save()
        messages.success(request, "You have Bidded Successfully")
    else:
        # messages.error (request, "Something Wrong, Please Try Again.")
        pass
    

        
    
    return render(request,'user/user-view-details.html',{'asset':asset_id})



def user_bid_status(request):
    user_id = request.session["user_id"]
    bids= Bidding.objects.filter(user_id=user_id)
    return render(request,'user/bid-status.html',{'asset':bids})

def user_profile(request):
    user_id = request.session["user_id"]
    profile=UserRegisterModel.objects.filter(user_id=user_id)
    obj = get_object_or_404(UserRegisterModel,user_id=user_id)
    
    if request.method == "POST":
        username = request.POST.get('name')
        mobile = request.POST.get('mobile')
        email = request.POST.get('email')
        profession = request.POST.get('profession')
        address = request.POST.get('address')
        
        
        if len(request.FILES)!= 0 :
            profile_image=request.FILES['image']  
            obj.username=username
            obj.mobile=mobile
            obj.email=email
            obj.profile_image=profile_image
            obj.profession=profession
            obj.address=address
            
            obj.save(update_fields=['username','mobile','email','profession','address','profile_image']) 
            messages.info(request, "Updated Successfully")
            # else:
            #     messages.error(request, "Something Wrong, Please try again.")
        else:
            profile_image=profile
            obj.username=username
            obj.mobile=mobile
            obj.email=email
            obj.profession=profession
            obj.address=address
            obj.profile_image=profile_image
        
            obj.save(update_fields=['username','mobile','email','profession','address'])
            messages.error(request, "Something Wrong, Please try again.")

    return render(request,'user/user-profile.html',{'p':profile})




