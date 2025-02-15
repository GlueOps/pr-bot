FROM python:3.11.11-alpine@sha256:d5e2fc72296647869f5eeb09e7741088a1841195059de842b05b94cb9d3771bb

RUN pip install --upgrade pip

COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY main.py /app/main.py
COPY ./src /app/src

CMD [ "python", "-u", "main.py" ]
