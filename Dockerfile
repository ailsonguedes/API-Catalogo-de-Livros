FROM python:3.11

WORKDIR /CatalogoLivrosApi

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY env .
COPY CatalogoLivrosApi/CatalogoLivrosApi .
COPY CatalogoLivrosApi/core .

CMD ["gunicorn", "CatalogoLivrosApi.wsgi.py"]
