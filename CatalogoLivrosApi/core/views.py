from django.shortcuts import render
from rest_framework import viewsets
from .models import Livro
from .serializers import LivroSerializer
from rest_framework.filters import SearchFilter

class LivroViewSet(viewsets.ModelViewSet):
    queryset = Livro.objects.all()
    serializer_class = LivroSerializer
    filter_backends = [SearchFilter]
    search_fields = ['genero', 'nomeDoAutor', 'editora', 'nome', 'tipo']