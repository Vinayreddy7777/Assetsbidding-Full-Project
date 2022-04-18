
from django.shortcuts import render, redirect,get_object_or_404
from adminapp.models import AssetsModel
from userapp.models import UserRegisterModel
from userapp.models import Bidding, UserRegisterModel

#importing resources for messages.
from django.contrib import messages

#importing resources for search in search box.
from django.db.models import Q

#importing for email
from django.core.mail import EmailMultiAlternatives
from Assetsbidding.settings import DEFAULT_FROM_EMAIL


    

def admin_main(request):
    if request.method == "POST":
        name = request.POST.get('username')
        password = request.POST.get('password')
        if name =='admin' and password =='admin':
           return redirect('admin-home')
        elif name =='admin@gmail.com' and password =='admin':
           return redirect('admin-home')
        else:
            messages.error(request, "Invalid Login") 

    return render(request,'admin/admin.html')

def admin_home(request):
    a=AssetsModel.objects.count()
    b=AssetsModel.objects.filter(asset_category='Vehicle').count()
    c=AssetsModel.objects.filter(asset_category='Property').count()
    d=Bidding.objects.count()
    g=Bidding.objects.filter(status='Accepted').count()
    f=UserRegisterModel.objects.count()
    return render(request,'admin/admin-home.html',{'a':a,'b':b,'c':c,'d':d,'f':f,'g':g})

def add_assets(request):
    if request.method == "POST" and request.FILES["image"]:
        asset_category=request.POST.get('category')
        asset_sub_category=request.POST.get('subcategory')
        asset_name=request.POST.get('username')
        asset_image=request.FILES['image']
        asset_bank=request.POST.get('bank')
        asset_desc=request.POST.get('description')
        asset_price=request.POST.get('price')  
        
        messages.success(request, "You Asset added Successfully")
  
        admin=AssetsModel.objects.create(asset_name=asset_name,asset_desc=asset_desc,asset_price=asset_price,asset_image=asset_image,asset_category=asset_category,asset_bank=asset_bank,asset_sub_category=asset_sub_category)
        admin.save()
    # else:
    #     messages.error (request, "Something Wrong, Please Try Again.")
    return render(request,'admin/add-assets.html')

    

def admin_view_assets(request):
    bids= AssetsModel.objects.all()
    
    if request.method=="POST":
        search=request.POST.get("search")
        bids=AssetsModel.objects.filter( Q(asset_category__icontains=search) | Q(asset_name__icontains=search) | Q(asset_bank__icontains=search)| Q(asset_price__icontains=search)| Q(posted_date__icontains=search) )
    return render(request,'admin/view-assets-backend.html',{'asset': bids })

def admin_view_details(request,id):
     bids = AssetsModel.objects.filter(asset_id=id)
     obj = get_object_or_404(AssetsModel,asset_id=id)
     if request.method == "POST":
        asset_category=request.POST.get('category')
        asset_sub_category=request.POST.get('subcategory')
        asset_name=request.POST.get('assetname')
        asset_bank=request.POST.get('bank')
        asset_desc=request.POST.get('description')
        asset_price=request.POST.get('price')  
        
        if len(request.FILES)!= 0 :
            asset_image=request.FILES['image']  
            obj.asset_category=asset_category
            obj.asset_sub_category=asset_sub_category
            obj.asset_name=asset_name
            obj.asset_image=asset_image
            obj.asset_bank=asset_bank
            obj.asset_desc=asset_desc
            obj.asset_price=asset_price
            obj.save(update_fields=['asset_category','asset_sub_category','asset_name','asset_bank','asset_desc','asset_price','asset_image'])
        else:
            asset_image=bids
            obj.asset_category=asset_category
            obj.asset_sub_category=asset_sub_category
            obj.asset_name=asset_name
            obj.asset_image=asset_image
            obj.asset_bank=asset_bank
            obj.asset_desc=asset_desc
            obj.asset_price=asset_price
            obj.save(update_fields=['asset_category','asset_sub_category','asset_name','asset_bank','asset_desc','asset_price'])
        
        
        
        
        if obj:    
            messages.success(request, "Updated Successfully")
        else:
            messages.error(request, "Something Wrong, Please try again.")
     return render(request,'admin/admin-view-details.html',{'d': bids })
 
def delete_asset(request,id):
    d = AssetsModel.objects.filter(asset_id=id)
    d.delete()
    return redirect('admin-view-assets')
 

def view_bids(request):
    bids= Bidding.objects.all()
    
    if request.method=="POST":
        search=request.POST.get("search")
        bids=Bidding.objects.filter( Q(bid_id__icontains=search) | Q(asset__asset_id__icontains=search) |Q(asset__asset_name__icontains=search) | Q(user__user_id__icontains=search)| Q(user__username__icontains=search)| Q(bid_price__icontains=search)| Q(bid_date__icontains=search) | Q(status__icontains=search) )
    return render(request,'admin/view-bids.html',{'asset':bids})


def view_bids_accept(request,id):
    form = get_object_or_404(Bidding,bid_id=id)
    form.status = 'Accepted'
    form.save(update_fields=["status"])
    form.save()
    #email code
    html_content = "<br/><p>Hello<strong>"+' '+str(UserRegisterModel.username) +"</strong>We are from AssetsBidding, Your Bid has been successfully <strong>Accepted</strong></p>"
    from_mail = DEFAULT_FROM_EMAIL
    to_mail = [form.user.email]
    # if send_mail(subject,message,from_mail,to_mail):
    msg = EmailMultiAlternatives("Connection Status", html_content, from_mail, to_mail)
    msg.attach_alternative(html_content, "text/html")
    if msg.send():
        print("Sent Successfully")
    return redirect("view-bids")

def view_bids_reject(request,id):
    form = get_object_or_404(Bidding,bid_id=id)
    form.status = 'Rejected'
    form.save(update_fields=["status"])
    form.save()
    #email code
    html_content = "<br/><p>Hello<strong>"+' '+str(UserRegisterModel.username) +"</strong>We are from AssetsBidding, Your Bid has been  <strong>Rejected</strong></p>"
    from_mail = DEFAULT_FROM_EMAIL
    to_mail = [form.user.email]
    # if send_mail(subject,message,from_mail,to_mail):
    msg = EmailMultiAlternatives("Connection Status", html_content, from_mail, to_mail)
    msg.attach_alternative(html_content, "text/html")
    if msg.send():
        print("Sent Successfully")
    return redirect("view-bids")


def purchased_assets(request):
    bids= Bidding.objects.filter(status="Accepted")
    
    if request.method=="POST":
        search=request.POST.get("search")
        bids=Bidding.objects.filter(Q(asset__asset_category__icontains=search) | Q(asset__asset_name__icontains=search) | Q(asset__asset_bank__icontains=search)| Q(asset__asset_price__icontains=search)| Q(asset__posted_date__icontains=search) ).filter(status="Accepted")
    return render(request,'admin/purchased-assets.html',{'asset': bids })

def view_users(request):
    bids= Bidding.objects.all()
    
    if request.method=="POST":
        search=request.POST.get("search")
        bids=Bidding.objects.filter(Q(user__user_id__icontains=search) | Q(user__username__icontains=search) | Q(user__mobile__icontains=search)| Q(user__email__icontains=search)| Q(status__icontains=search))
    return render(request,'admin/view-users.html',{'asset':bids})







