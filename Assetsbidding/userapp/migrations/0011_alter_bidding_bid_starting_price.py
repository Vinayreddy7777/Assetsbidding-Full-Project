# Generated by Django 4.0.1 on 2022-03-30 10:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0010_userregistermodel_profession_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bidding',
            name='bid_starting_price',
            field=models.IntegerField(null=True),
        ),
    ]
