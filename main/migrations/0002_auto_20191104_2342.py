# Generated by Django 2.2.7 on 2019-11-05 02:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='TituloUrl',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=200)),
            ],
        ),
        migrations.AlterField(
            model_name='anime',
            name='sinopse',
            field=models.CharField(max_length=600),
        ),
    ]