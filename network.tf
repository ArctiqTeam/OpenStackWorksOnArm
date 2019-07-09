# Create a new VLAN in datacenter "ewr1"
resource "packet_vlan" "vlan1" {
  description = "Tenant VLAN OCP"
  facility    = "ewr1"
  project_id  = "${env.TF_VAR_packet_project_id}"
}