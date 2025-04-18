FROM python


COPY . /app/
WORKDIR /app
CMD ['python3', 'app.py']

