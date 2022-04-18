# Generated by Django 4.0.1 on 2022-03-30 07:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0009_alter_userregistermodel_mobile'),
    ]

    operations = [
        migrations.AddField(
            model_name='userregistermodel',
            name='profession',
            field=models.CharField(max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='userregistermodel',
            name='profile_image',
            field=models.ImageField(null=True, upload_to='images/'),
        ),
        migrations.AlterField(
            model_name='userregistermodel',
            name='address',
            field=models.CharField(max_length=200, null=True),
        ),
    ]
