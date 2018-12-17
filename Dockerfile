FROM python:3.7.0-stretch
ENV MLFLOW_SERVER_HOST 0.0.0.0
ENV MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT "wasbs://pocdemo@mflowpoc2.blob.core.windows.net"
ENV AZURE_STORAGE_ACCESS_KEY ""

# Set the working directory to /
WORKDIR /

# Copy the directory contents into the container at /
COPY . /

RUN apt-get update
RUN pip install -r requirements.txt

ENTRYPOINT ["./startup.sh"]