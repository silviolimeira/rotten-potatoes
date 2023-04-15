FROM python:2.7
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install flask
# ref: https://learnpython.com/blog/python-requirements-file/#:~:text=Use%20the%20pip%20install%20%2Dr,up%20to%20date%20and%20accurate.
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt
COPY . /app
ENV FLASK_APP=app
CMD ["python","app.py"]

# docker build -t sicemal/rotten-potatoes:v1 .

# push no docker hub
# $ docker push sicemal/rotten-potatoes:v1

# $ docker tag sicemal/rotten-potatoes:v1 sicemal/rotten-potatoes:latest

# push latest image to docker hub
# $ docker push sicemal/rotten-potatoes:latest


# Executando e testando a imagem que foi construída
# $ docker container run -d -p 8080:8080 sicemal/rotten-potatoes:v1
