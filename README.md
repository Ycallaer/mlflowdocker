# Mlflow Docker
The following project creates a docker container running mlflow server.
The current version is version 1.19.0 of Mlflow.
An integration for postgresql has been foreseen to store models inside mlflow server.

## Requirements
* docker engine
* docker compose

## Docker build: howto
If you are new to docker you will first need to install docker on your machine.
If the installation is finished, you will need to clone this repo to your local machine.
Once it has been cloned you can build the docker with the following command:

* `docker build -t mlflowserver -f Dockerfile . --no-cache`

## Docker run: howto
If the build was successful you can start the container with the following command:

```bash
docker run -p 5000:5000 --env MLFLOW_BACKEND_STORE_URI=<backendstore> -it mlflowserver:latest
```

In this case the backend store would be a valid connection string towards the database you are running.
If you are unsure how to achieve this, there is also a `docker-compose.yml` file that spins up both postgress db and
mlflow server, giving you a full working example.

If you want to run the docker compose example run the following command:
```bash
docker-compose -f docker-compose.yml up --build -d
```


## Configuring the artifact root

One of the options you can configure is the artifact root.
By default this will be set to a path inside the docker container, in a location `./mlruns`.
This also means that if the container dies, that your artifacts will be gone.

There are a couple of options for remote artifact root:
* AWS S3 => eg: s3://<bucketname>
* Azure Blob store => eg: "wasbs://poc@mflowpoc2.blob.core.windows.net"
* Google Cloud Storage 
* ....

## Access the website
If you run the docker local the website will be available from http://localhost:5000

## MlFlow documentation

All documentation with regards to mlflow can be found here: https://mlflow.org/docs/latest/index.html

## Contributing
If you want to contribute, please abide by the following rules:

Create a feature branch and add your changes
Create a pull request to merge into master
Have a reviewer and merge