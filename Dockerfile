FROM python:alpine
COPY app.py app.py
RUN pip install gunicorn bottle
CMD gunicorn -w 2 -b :8000 app:app
EXPOSE 8000
