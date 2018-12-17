# mlflowdocker
Docker container for mlflow 0.8 framework with azure backend.


## Docker build: howto
If you are new to docker you will first need to install docker on your machine.
If the installation is finished, you will need to clone this repo to your local machine.
Once it has been cloned you can build the docker with the following command:

* `docker build -t mlflowserver -f Dockerfile . --no-cache`

## Docker run: howto
If the build was successful you can start the container with the following command:

* `docker run -p 5000:5000 --env MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT=<wasb> --env AZURE_STORAGE_ACCESS_KEY=<access_key> -it mlflowserver:latest`

Please note that the port is by default on 5000

## Configuring the azure backend

The current container was configured to have the storage backend in Microsoft Azure.
Please do the following actions:

* Create a blobstorage account
* Create a container in the blobstorage account
* Write down the connection string and replace wasb with the connection string (eg: "wasbs://poc@mflowpoc2.blob.core.windows.net")
* Write down the authentication key and replace access_key with that value

## Access the website
If you run the docker local the website will be available from https://localhost:5000

## MlFlow documentation

All documentation with regards to mlflow can be found here: https://mlflow.org/docs/latest/index.html


