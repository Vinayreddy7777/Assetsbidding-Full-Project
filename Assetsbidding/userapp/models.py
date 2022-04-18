from django.db import models
from django.forms import DateField
from adminapp.models import AssetsModel

# Create your models here.

class UserRegisterModel(models.Model):
    user_id=models.AutoField(primary_key=True)
    username=models.CharField(max_length=100,help_text="Enter UserName")
    mobile=models.BigIntegerField(help_text="Enter Mobile Number")
    email=models.EmailField(max_length=100,help_text="Enter Email")
    profession=models.CharField(max_length=200, null=True)
    address=models.CharField(max_length=200, null=True)
    password=models.CharField(max_length=100,help_text="Enter Password")
    profile_image=models.ImageField(upload_to='images/', null=True)
    class Meta:
        db_table= "user_details"
    
    def __str__(self):
        return self.username


class Bidding(models.Model):
    bid_id=models.AutoField(primary_key=True)
    asset=models.ForeignKey(AssetsModel,db_column='asset_id',on_delete=models.CASCADE,default=1,related_name="assets")
    user=models.ForeignKey(UserRegisterModel,db_column='user_id',on_delete=models.CASCADE,default=1,related_name="register")    
    bid_price=models.IntegerField()
    bid_date=models.DateField(auto_now_add=True)
    status=models.CharField(default="pending",max_length=100,null=True)

    class Meta:
        db_table="bid_details"

    def __str__(self):
        return self.bid_id + ' ' + self.asset
    