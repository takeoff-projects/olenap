gcloud config set project $PROJECT
cd terraform
terraform plan -destroy
terraform destroy
firebase firestore:delete --all-collections
gsutil rm -r gs://olenap-level1
cd ..