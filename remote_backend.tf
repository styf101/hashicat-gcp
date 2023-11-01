terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "TestLab101"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
