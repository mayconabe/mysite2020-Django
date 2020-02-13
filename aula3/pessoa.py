import unittest

pessoas = []

class Pessoa:

    def set_nome(self, n):
        pessoas.append(n)
        self.nome = n

    def get_nome(self):
        return self.nome

    def get_id(self):
        return pessoas.index(self.nome)
        


class TestePessoa(unittest.TestCase):

    nome1 = 'Maycon'
    nome2 = 'Marley'
    id1 = 0
    id2 = 1

    def test_set_nome(self):
        p = Pessoa()
        p.set_nome(self.nome1)
        self.assertEquals(self.nome1, p.nome)

    def test_get_nome(self):
        p = Pessoa()
        p.set_nome(self.nome1)
        self.assertEquals(p.get_nome(), self.nome1)

    def test_get_id(self):
        p = Pessoa()
        p.set_nome(self.nome1)

        p2 = Pessoa()
        p2.set_nome(self.nome2)

        id_ = p.get_id()
        self.assertEquals(id_, self.id1)
        
        id_2 = p2.get_id()
        self.assertEquals(id_2, self.id2)

if __name__ == '__main__':
    unittest.main()
