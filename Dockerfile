FROM python:3.8
RUN pip install django

COPY ./app /app
WORKDIR /app
EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080", "--noreload"]
