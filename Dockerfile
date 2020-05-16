FROM python:alpine
RUN pip install gunicorn bottle
CMD gunicorn -w 2 app:app()
EXPOSE 8000
