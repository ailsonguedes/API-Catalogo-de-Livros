FROM python:3.8

WORKDIR /CatalogoLivrosApi

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "CatalogoLivrosApi.wsgi"]




