from django.db import models

class AnimeHouse(models.Model):
    nome = models.CharField(max_length=200)
    imagem = models.CharField(max_length=200)
    ano = models.IntegerField(default=2000)
    slug = models.CharField(max_length=200)
    sinopse = models.CharField(max_length=10000)
