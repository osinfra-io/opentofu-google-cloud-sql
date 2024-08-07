output "client_cert" {
  description = "The client certificate"
  value = {
    for cert in var.client_certs : cert => google_sql_ssl_cert.this[cert].cert
  }
  sensitive = true
}

output "instance_server_ca_cert" {
  description = "The SQL instance server CA certificate"
  value       = google_sql_database_instance.this.server_ca_cert
  sensitive   = true
}

output "private_key" {
  description = "The client private key"
  value = {
    for key in var.client_certs : key => google_sql_ssl_cert.this[key].private_key
  }
  sensitive = true
}

output "private_ip_address" {
  description = "SQL instance private IP address"
  value       = google_sql_database_instance.this.private_ip_address
}

output "project_id" {
  description = "The ID of the project in which the resource belongs"
  value       = var.project
}

output "sql_instance" {
  description = "SQL instance name"
  value       = google_sql_database_instance.this.name
}
