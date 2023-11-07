from django.db import models

class Livro(models.Model):
    nome = models.CharField(max_length=200)
    nomeDoAutor = models.CharField(max_length=200)
    anoDeLançamento = models.IntegerField()
    numEdicao = models.IntegerField()
    
    def __str__(self):
        return self.nome
    
