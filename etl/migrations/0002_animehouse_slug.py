# Generated by Django 2.2.5 on 2020-02-03 23:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('etl', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='animehouse',
            name='slug',
            field=models.CharField(default='', max_length=200),
            preserve_default=False,
        ),
    ]
