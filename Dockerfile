FROM python:3.7.0-stretch
ENV MLFLOW_SERVER_HOST 0.0.0.0
ENV MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT "./mlruns"
ENV MLFLOW_BACKEND_STORE_URI ""

# Set the working directory to /
WORKDIR /

# Copy the directory contents into the container at /
COPY . /

RUN apt-get update
RUN pip install --upgrade pip && pip install -r requirements.txt

ENTRYPOINT ["./startup.sh"]