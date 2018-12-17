#!/usr/bin/env bash

mlflow server --file-store "$MLFLOW_SERVER_FILE_STORE" --default-artifact-root "$MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT" --host 0.0.0.0