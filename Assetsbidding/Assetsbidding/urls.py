"""Assetsbidding URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
import adminapp
from mainapp import views as main_views
from adminapp import views as admin_views
from userapp import views as user_views

from django.conf.urls.static import static
from django.conf import settings


urlpatterns = [
    #main
    path('admins/', admin.site.urls),
    path('', main_views.main_home, name='home_main'),
    path('main-assets', main_views.main_assets, name='asset_main'),
    path('main_view_details/<int:id>/', main_views.main_view_details, name='main_view_details'),
    path('main-about', main_views.main_about, name='about_main'),
    
    



    #admin
    path('admin', admin_views.admin_main, name='admin_main'),
    path('admin-home',admin_views.admin_home, name='admin-home'),
    path('admin-add-assets',admin_views.add_assets, name='add-assets'),
    path('admin-view-assets',admin_views.admin_view_assets, name='admin-view-assets'),
    # path('admin-view-details', admin_views.admin_view_details, name='admin_view_details'),
    path('admin_view_details/<int:id>/', admin_views.admin_view_details, name='admin_view_details'),
    path('delete_asset/<int:id>/', admin_views.delete_asset, name='delete_asset'),

    path('admin-view-bids',admin_views.view_bids, name='view-bids'),
    path('view_bids_accept/<int:id>/',admin_views.view_bids_accept,name='view_bids_accept'),
    path('view_bids_reject/<int:id>/',admin_views.view_bids_reject,name='view_bids_reject'),
    path('admin-purchased-assets',admin_views.purchased_assets, name='purchased-assets'),
    path('admin-view-users',admin_views.view_users, name='view-users'),
    path('',main_views.main_home, name='admin_logout'),


    #user
    path('user-login', user_views.user_main, name='user_main'),
    path('user/user-registration',user_views.user_reg,name='user-registration'),
    path('user-home',user_views.user_home, name='user_home'),
    path('user-assets',user_views.user_assets, name='user_assets'),
    # path('user-view-details', user_views.user_view_details, name='user_view_details'),
    path('user_view_details/<int:id>/',user_views.user_view_details,name='user_view_details'),
    path('user-bid-status', user_views.user_bid_status, name='bid_status'),
    path('user-profile',user_views.user_profile, name='user_profile'),
    path('',main_views.main_home, name='user_logout'),
    
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)