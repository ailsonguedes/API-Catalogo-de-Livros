FROM python:3.11.5

WORKDIR /API-Catalogo-de-Livros

COPY /API-Catalogo-de-Livros/requirements.txt .

RUN pip install -r requirements.txt

COPY CatalogoLivrosApi/CatalogoLivrosApi .

COPY CatalogoLivrosApi/core .

CMD ["gunicorn", "CatalogoLivrosApi.wsgi"]