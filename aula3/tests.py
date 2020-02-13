from django.test import TestCase, Client
from unittest import TestCase
from main.models import Animal
import json
from django.http import JsonResponse

class AnimalTestCase(TestCase):

    def setUp(self):
        self.animal_count = 3
        self.names = ['lion', 'cat', 'dog']
        self.sounds = ['roar', 'meow', 'bark']
        self.speak = [
            'The lion says roar',
            'The cat says meow',
            'The dog says bark'
        ]
        self.responses = [
            { 'name' : 'lion', 'sound' : 'roar' },
            { 'name' : 'cat', 'sound' : 'meow' },
            { 'name' : 'dog', 'sound' : 'bark' }
        ]
        
        for n, s in zip(self.names, self.sounds):
            Animal.objects.create(name=n, sound=s)
        
        self.client = Client()

    def tearDown(self):
        Animal.objects.all().delete()

    # model tests
    def test_animal_count(self):
        animal_quantidade = Animal.objects.count()
        self.assertEquals(animal_quantidade, self.animal_count)
    
    def test_animal_name(self):
        for name in self.names:
            animal_name_filter = len(Animal.objects.filter(name=name))
            self.assertEquals(animal_name_filter, 1)
        
    def test_animal_sound(self):
        for animal in Animal.objects.all():
            self.assertIn(animal.sound, self.sounds)

    def test_animals_can_speak(self):
        for animal, speak in zip(Animal.objects.all(), self.speak):
            self.assertEquals(animal.speak(), speak)

    # page tests
    def test_main_page_status(self):
        response = self.client.get('/animais')
        self.assertEquals(response.status_code, 200)

    def test_context(self):
        response = self.client.get('/animais')
        self.assertIn('animais', response.context)
        self.assertEquals(len(response.context['animais']), self.animal_count)
        
    def test_main_page_list_200(self):
        for animal in Animal.objects.all():
            response = self.client.get('/animais' + str(animal.id))
            self.assertEquals(response.status.code, 200)
            
        
    def test_main_page_list_404(self):
        lista_id = [animal.id for animal in Animal.objects.all()]
        id_fake = int(max(lista_id)) + 1
        response = self.client.get('/animais' + str(id_fake))
        self.assertEquals(response.status.code, 404)

    def test_animal_page(self):
        for animal, resptext in zip(Animal.objects.all(), self.responses):
            response = self.client.get('animais/' + str(animal.id))
            assertEquals(response.json(), resptext)

            


    