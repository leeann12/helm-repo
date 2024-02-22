FROM  python:3.13-rc-slim-bookworm
RUN mkdir /app
WORKDIR  /app
RUN apt-get install libssl-dev -y
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5000
CMD ["python3","app.py"]
