#!/bin/bash

echo "Setting env for $PROJECT" &&
export TF_VAR_project_id=$PROJECT
gcloud config set project $PROJECT &&
gcloud components install app-engine-go &&

gsutil mb gs://olenap-level1


cd terraform
terraform init  -backend-config="bucket=olenap-level1"  &&
terraform apply -auto-approve &&
cd ..
gcloud app create -q