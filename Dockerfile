#base image
FROM python:3-alpine

#code maintained by
MAINTAINER Dinesh

#label
LABEL BASE_IMAGE="python"
LABEL PYTHON_VERSION="3"

WORKDIR /service

#copy from local
COPY requirements.txt .

# run during image creation
RUN pip install -r requirements.txt

# Copies all files from the current directory on your host to `/service` in the container
COPY . ./

#port 8989
EXPOSE 8989

#execute during container creation
ENTRYPOINT ["python3", "app.py"]