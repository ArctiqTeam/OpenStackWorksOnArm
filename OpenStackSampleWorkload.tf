#
# load up the cloud with some sample VMs and a network
#

resource "null_resource" "openstack-sample-workload" {
  depends_on = ["null_resource.controller-openstack", "null_resource.openstack-flavors"]

  connection {
    host        = "${packet_device.controller.access_public_ipv4}"
    private_key = "${file("${var.cloud_ssh_key_path}")}"
  }

  provisioner "file" {
    source      = "userdata.txt"
    destination = "userdata.txt"
  }

  provisioner "file" {
    source      = "SampleOpenStackWorkload.sh"
    destination = "SampleOpenStackWorkload.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash SampleOpenStackWorkload.sh > SampleOpenStackWorkload.out",
    ]
  }
}
