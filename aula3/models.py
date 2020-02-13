from django.db import models

class Pessoa(models.Model):

    nome = models.CharField(max_length=200)


    def set_nome(self, n):
        self.nome = n

    def get_nome(self):
        return self.nome

    def get_id(self):
        return self.id    


