from django.shortcuts import render, redirect
from adminapp.models import AssetsModel
from userapp.models import UserRegisterModel, Bidding

#importing resources for messages.
from django.contrib import messages

#importing resources for search in search box.
from django.db.models import Q


def main_home(request):
    a=AssetsModel.objects.count()
    b=AssetsModel.objects.filter(asset_category='Vehicle').count()
    c=AssetsModel.objects.filter(asset_category='Property').count()
    d=Bidding.objects.count()
    f=UserRegisterModel.objects.count()
    g=b+c
    
    bids=Bidding.objects.filter(status="Accepted")
    return render(request,'main/index.html',{'a':a,'b':b,'c':c,'d':d,'f':f,'g':g,'bids':bids})

def main_assets(request):
    bids= AssetsModel.objects.all()
    
    if request.method=="POST":
        search=request.POST.get("search")
        bids=AssetsModel.objects.filter( Q(asset_category__icontains=search) | Q(asset_name__icontains=search) | Q(asset_bank__icontains=search)| Q(asset_price__icontains=search)| Q(posted_date__icontains=search) )
    return render(request,'main/shop.html',{'asset':bids})


def main_view_details(request,id):
    bids= AssetsModel.objects.filter(asset_id=id)
    if request.method=="POST":
        messages.info(request, "Please Login First.")        
        return redirect('user_main')
    return render(request,'main/view-details.html',{'d':bids})


def main_about(request):
    return render(request,'main/about.html')


