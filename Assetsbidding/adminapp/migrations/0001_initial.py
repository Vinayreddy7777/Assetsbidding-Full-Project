# Generated by Django 4.0.1 on 2022-02-05 07:59

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AssetsModel',
            fields=[
                ('asset_id', models.AutoField(primary_key=True, serialize=False)),
                ('asset_category', models.CharField(help_text='Select Category', max_length=100, null=True)),
                ('asset_sub_category', models.CharField(help_text='Select Sub-Category', max_length=100, null=True)),
                ('asset_name', models.CharField(help_text='Enter Assetname', max_length=100)),
                ('asset_image', models.ImageField(null=True, upload_to='images/')),
                ('asset_bank', models.CharField(help_text='Select Your Bank', max_length=100)),
                ('asset_desc', models.TextField()),
                ('asset_price', models.IntegerField()),
                ('posted_date', models.DateTimeField(default=datetime.datetime(2022, 2, 5, 13, 29, 17, 319885))),
            ],
            options={
                'db_table': 'assets_details',
            },
        ),
    ]
