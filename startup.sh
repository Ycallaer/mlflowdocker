#!/usr/bin/env bash

mlflow server --file-store /tmp/mlflow --default-artifact-root "$MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT" --host 0.0.0.0