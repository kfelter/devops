# Source
https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started

# Setup nginx on docker with terraform
Make sure docker is running

```sh
open -a Docker
mkdir learn-terraform-docker-container
cd learn-terraform-docker-container
```

create file `main.tf`
```tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}
```

run the terraform command
```sh
terraform init
terraform apply
```

verify the deployment
```sh
docker ps
curl localhost:8000
```

destroy the deployment to release resources used
```sh
terraform destroy
```

