resource "null_resource" "initialize_angular" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "echo 'wait 500ms to ensure the folders exist...' && powershell.exe Start-Sleep -Milliseconds 500"
  }
  
  provisioner "local-exec" {
    command = "npm install @angular/cli"
    working_dir = var.target
  }

  provisioner "local-exec" {
    command = "npx ng new ${var.project_name}-client --skip-git"
    working_dir = var.target
  }
}