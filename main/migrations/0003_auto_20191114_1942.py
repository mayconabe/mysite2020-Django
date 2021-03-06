# Generated by Django 2.2.7 on 2019-11-14 22:42

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('main', '0002_auto_20191104_2342'),
    ]

    operations = [
        migrations.CreateModel(
            name='Perfil',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('telefone', models.IntegerField()),
                ('djangouser', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='PerfilAnime',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('momento', models.IntegerField()),
                ('favorito', models.BooleanField()),
                ('notificacoes', models.BooleanField()),
            ],
        ),
        migrations.CreateModel(
            name='PerfilEpisodio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('_curti', models.BooleanField(default=False)),
                ('_naogostei', models.BooleanField(default=False)),
            ],
        ),
        migrations.DeleteModel(
            name='TituloUrl',
        ),
        migrations.AddField(
            model_name='anime',
            name='visualizacoes',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='episodio',
            name='curtidas',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='episodio',
            name='tipo',
            field=models.CharField(choices=[('N', 'Normal'), ('F', 'Filler'), ('filme', 'Filme'), ('ova', 'OVA')], max_length=2),
        ),
        migrations.AlterField(
            model_name='genero',
            name='tipo_genero',
            field=models.CharField(choices=[('acao', 'Ação'), ('comedia', 'Comédia'), ('aventura', 'Aventura'), ('sliceoflife', 'Slice of life'), ('romance', 'Romance'), ('ecchi', 'Ecchi'), ('faroeste', 'Faroeste'), ('scifi', 'Sci-Fi'), ('horror', 'Terror'), ('guerra', 'Guerra'), ('policial', 'Policial'), ('investigacao', 'Investigação'), ('artesmarciais', 'Artes Marciais'), ('isekai', 'Isekai'), ('shoujo', 'Shoujo'), ('josei', 'Josei'), ('shounen', 'Shounen'), ('kodomo', 'Kodomo')], max_length=20),
        ),
        migrations.AddField(
            model_name='perfilepisodio',
            name='episodio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Episodio'),
        ),
        migrations.AddField(
            model_name='perfilepisodio',
            name='perfil',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Perfil'),
        ),
        migrations.AddField(
            model_name='perfilanime',
            name='anime',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Anime'),
        ),
        migrations.AddField(
            model_name='perfilanime',
            name='episodio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Episodio'),
        ),
        migrations.AddField(
            model_name='perfilanime',
            name='perfil',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Perfil'),
        ),
    ]
