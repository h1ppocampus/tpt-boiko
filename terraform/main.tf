provider "google" {
    project = "${var.projName}"
    region = "${var.regName}"
    zone = "${var.zoneName}"
}

resource "google_sql_database" "database" {
    name = "${var.dbName}"
    instance = "${google_sql_database_instance.master.name}"
    charset = "utf8"
}

resource "google_sql_database_instance" "master" {
    name = "master-instance"
    region = "${var.regName}"
    database_version = "${var.dbVersion}"
    settings {
        tier = "${var.dbType}"
    }

    deletion_protection = "false"
}

resource "google_sql_user" "users" {
    name = "${var.userName}"
    instance = "${google_sql_database_instance.master.name}"
    host = "%"
    password = "${var.dbPass}"
}