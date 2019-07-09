# Create a new VLAN in datacenter "ewr1"
resource "packet_vlan" "vlan1" {
  description = "Tenant VLAN OCP"
  facility    = "ewr1"
  project_id  = "${local.project_id}"
}