FROM python:3.9

WORKDIR /myproject

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN apt-get update \
    && apt-get install -qqy screen \
    && rm -rf /var/lib/apt/lists

COPY . .

CMD ["python", "hello.py"]

