from django.db import models

class Livro(models.Model):
    nome = models.CharField(max_length=200)
    nomeDoAutor = models.CharField(max_length=200)
    lancamento = models.IntegerField()
    tipo = models.CharField(max_length=100)
    genero = models.CharField(max_length=200)
    editora = models.CharField(max_length=200)
    anoEdicao = models.IntegerField()
    numEdicao = models.IntegerField()
    
    def __str__(self):
        return self.nome
    
