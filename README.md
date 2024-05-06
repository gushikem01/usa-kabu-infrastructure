# usa-kabu.com infrastructure

* this is a repository for create <https://usa-kabu.com> resource on GCP

1. [terraform](https://www.terraform.io/)

```code
brew install terraform
brew install tfenv tflint
brew install pre-commit
pre-commit install
pre-commit run -a

chmod +x tf.sh
```

2. [gcloud](https://cloud.google.com/sdk/docs/install)

```code
gcloud config set project usa-kabu-prd
gsutil mb gs://usa-kabu-prd-terraform-state
```

3. storage

```code
./tf.sh init ./modules/storage/ -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh plan ./modules/storage/ -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh refresh ./modules/storage/ -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh apply ./modules/storage/ -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh destroy ./modules/storage/ -backend-config="bucket=usa-kabu-prd-terraform-state"
```

4. secret

```code
./tf.sh init ./modules/secret -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh plan ./modules/secret -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh refresh ./modules/secret -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh apply ./modules/secret -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh destroy ./modules/secret -backend-config="bucket=usa-kabu-prd-terraform-state"
```

5. artifact

```code
./tf.sh init ./modules/artifact/ -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh plan ./modules/artifact/ -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh refresh ./modules/artifact/ -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh apply ./modules/artifact/ -backend-config="bucket=usa-kabu-prd-terraform-state"
./tf.sh destroy ./modules/artifact/ -backend-config="bucket=usa-kabu-prd-terraform-state"
```
