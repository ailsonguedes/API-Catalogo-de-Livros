FROM python:3.11.5

WORKDIR /API-Catalogo-de-Livros

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY CatalogoLivrosApi/CatalogoLivrosApi .

CMD ["gunicorn", "CatalogoLivrosApi.wsgi"]
