# Generated by Django 4.0.1 on 2022-02-05 07:59

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assetsmodel',
            name='posted_date',
            field=models.DateTimeField(default=datetime.datetime(2022, 2, 5, 13, 29, 58, 367083)),
        ),
    ]
