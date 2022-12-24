FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
ENV FLASK_ENV=${FLASK_ENV}

COPY . .

#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
