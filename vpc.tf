module "network" {
  source       = "app.terraform.io/TestLab101/network/google"
  version      = "3.4.0"
  network_name = "${var.prefix}-vpc-${var.region}"
  project_id   = var.project
  subnets = [
    {
      subnet_name   = "${var.prefix}-subnet"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = var.region
    }
  ]
}
