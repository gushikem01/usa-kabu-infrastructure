# usa-kabu.com infrastructure

* this is a repository for create <https://usa-kabu.com> resource on GCP

```code
brew install terraform
brew install tfenv tflint
brew install pre-commit
pre-commit install
pre-commit run -a

chmod +x tf.sh
```

```code
gcloud config set project usa-kabu-prd
gsutil mb gs://usa-kabu-terraform-state
```

```code
./tf.sh init -backend-config="bucket=usa-kabu-terraform-state"
```
