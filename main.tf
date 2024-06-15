provider "local" {}

module "directories" {
  source = "./modules/directories"

  directories = [
    "${path.root}/result/${var.project_name}/angular",
    "${path.root}/result/${var.project_name}/docs",
  ]
}

module "angular" {
  source = "./modules/angular"

  project_name = var.project_name
  target = "${path.root}/result/${var.project_name}/angular"
}

resource "null_resource" "order" {
  depends_on = [ module.directories, module.angular]
}