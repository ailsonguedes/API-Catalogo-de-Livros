FROM python:3.11

WORKDIR /API-Catalogo-de-Livros

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY CatalogoLivrosApi/CatalogoLivrosApi .

COPY CatalogoLivrosApi/core .

CMD ["gunicorn", "CatalogoLivrosApi.wsgi"]
