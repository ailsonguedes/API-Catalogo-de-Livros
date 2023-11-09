from rest_framework import serializers
from .models import Livro

class LivroSerializer(serializers.ModelSerializer):
    class Meta:
        model = Livro
        fields = ('id', 'nome', 'nomeDoAutor', 'lancamento','tipo', 'genero', 'editora', 'anoEdicao', 'numEdicao')
           