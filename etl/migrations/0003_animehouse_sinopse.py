# Generated by Django 2.2.5 on 2020-02-04 00:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('etl', '0002_animehouse_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='animehouse',
            name='sinopse',
            field=models.CharField(default='', max_length=10000),
            preserve_default=False,
        ),
    ]