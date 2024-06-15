resource "null_resource" "create_directories" {
  count = length(var.directories)

  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "powershell.exe New-Item -Path '${var.directories[count.index]}' -ItemType Directory -Force"
  }
}