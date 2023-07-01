FROM python:alpine3.18
WORKDIR /app
COPY . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
CMD ["gunicorn", "app:app"]