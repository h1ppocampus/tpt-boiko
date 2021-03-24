output "ip" {
   value = google_sql_database_instance.master.ip_address.0.ip_address
   description = "db ip address " 
}

output "user_name" {
  value       = google_sql_user.users.name
  description = "The user name for logging into the database"
}

output "db_pass" {
   value = google_sql_user.users.password
   description = "The password for logging into the database"
}