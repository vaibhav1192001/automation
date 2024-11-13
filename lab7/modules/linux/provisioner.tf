resource "null_resource" "linux_provisioner" {
  for_each = { for vm in ["vm1", "vm2", "vm3"] : vm => vm }

  depends_on = [
    azurerm_linux_virtual_machine.linux_vm1,
    azurerm_linux_virtual_machine.linux_vm2
  ]

  provisioner "remote-exec" {
    inline = [
      "hostname"
    ]

    connection {
      type        = "ssh"
      user        = var.admin_username
      private_key = file("~/.ssh/id_rsa")
      host        = each.key == "vm1" ? azurerm_public_ip.linux_vm1_pip.ip_address : azurerm_public_ip.linux_vm2_pip.ip_address
    }
  }
}
