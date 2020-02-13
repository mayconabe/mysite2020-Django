from django.test import TestCase, Client
from aula3.models import Pessoa
import unittest

class TestePessoa(TestCase):

    nomes = ['Maycon', 'Marley']
    ids = []

    def setUp(self):
        self.client = Client()
        for n in self.nomes:
           p = Pessoa.objects.create(nome='')
           self.ids.append(p.id)
    
    def tearDown(self):
        Pessoa.objects.all().delete()
        self.ids.clear()


    def test_set_nome(self):
        for id_, n in zip(self.ids, self.nomes):
            p = Pessoa.objects.get(id=id_)
            p.set_nome(n) 
            self.assertEquals(n, p.nome)

    def test_get_nome(self):
        for id_, n in zip(self.ids, self.nomes):
            p = Pessoa.objects.get(id=id_) 
            p.set_nome(n)
            self.assertEquals(p.get_nome(), n)

    def test_details(self):
        for pessoa in Pessoa.objects.all():
            response = self.client.get('/pessoa/' + str(pessoa.id))
            self.assertEquals(response.status_code, 200)
        
    def test_pessoa_return_context(self):
        for pessoa in Pessoa.objects.all():
            response = self.client.get('/pessoa/' + str(pessoa.id))
            self.assertIn('pessoa', response.context)

    def test_get_id(self):
        for id_, n in zip(self.ids, self.nomes):
            p = Pessoa.objects.get(id=id_)
            self.assertEquals(id_, p.id)

if __name__ == '__main__':
    unittest.main()
