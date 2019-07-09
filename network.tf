# Create a new VLAN in datacenter "ewr1"
resource "packet_vlan" "vlan1" {
  description = "Tenant VLAN OCP"
  facility    = "ewr1"
  project_id  = "${var.packet_project_id}"
}

resource "packet_vlan" "vlan2" {
  description = "OCP Shared Network"
  facility    = "ewr1"
  project_id  = "${var.packet_project_id}"
}

resource "packet_vlan" "vlan3" {
  description = "Management Network"
  facility    = "ewr1"
  project_id  = "${var.packet_project_id}"
}

resource "packet_vlan" "vlan4" {
  description = "Inbound Provider Network"
  facility    = "ewr1"
  project_id  = "${var.packet_project_id}"
}