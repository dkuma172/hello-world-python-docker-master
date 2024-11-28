#base image
FROM python:3-alpine

MAINTAINER Codaming

WORKDIR /service

COPY requirements.txt .

# run during image creation
RUN pip install -r requirements.txt

COPY . ./

EXPOSE 8080

ENTRYPOINT ["python3", "app.py"]