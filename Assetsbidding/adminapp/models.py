from datetime import datetime
from MySQLdb import Date
from django.db import models

# Create your models here.

class AssetsModel(models.Model):
    asset_id=models.AutoField(primary_key=True)
    asset_category=models.CharField(max_length=100, null=True, help_text="Select Category")
    asset_sub_category=models.CharField(max_length=100, null=True, help_text="Select Sub-Category")
    asset_name=models.CharField(max_length=100,help_text="Enter Assetname")
    asset_image=models.ImageField(upload_to='images/', null=True)
    asset_bank=models.CharField(max_length=100, help_text="Select Your Bank" )
    asset_desc=models.TextField()
    asset_price=models.IntegerField()
    posted_date=models.DateTimeField(default=datetime.now())


    class Meta:
        db_table= "assets_details"
    
    def __str__(self):
        return self.asset_name
