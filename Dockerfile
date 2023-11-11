FROM python:3.11

WORKDIR /API-Catalogo-de-Livros

COPY CatalogoLivrosApi/requirements.txt .

RUN pip install -r requirements.txt

COPY CatalogoLivrosApi/ .

CMD ["gunicorn", "CatalogoLivrosApi.wsgi"]
