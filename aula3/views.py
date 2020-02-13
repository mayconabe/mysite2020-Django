from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from aula3.models import Pessoa

class PessoaView(View):

    def get(self, request, pessoa_id=None):
        if pessoa_id: #caso B
            pessoa = Pessoa.objects.get(id=pessoa_id)
            data = {
                'pessoa': Pessoa.objects.get(id=pessoa_id)
            }
            return render(request, 'aula3/pessoa.html', data)
        else: #caso A
            pessoa = Pessoa.objects.all()
            data = {
                'pessoa_list': Pessoa.objects.all()
            }
            return render(request, 'aula3/pessoa.html', data)

