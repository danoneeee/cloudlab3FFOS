FROM python:3.12.0

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

COPY requirements.txt /code/
RUN pip install --user -r requirements.txt

COPY . /code/

CMD python manage.py runserver 0.0.0.0:8000

