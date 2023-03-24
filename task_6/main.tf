provider "google" {
  project = "applied-summer-378020"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "static-site" {
  name          = "dare-it-task-6-bucket"
  location      = "US"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_compute_instance" "dareit-vm" {
  name         = "dareit-task-6-vm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_sql_database_instance" "instance" {
  name             = "dareit"
  database_version = "POSTGRES_14"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
}

resource "google_sql_user" "user" {
  name     = "dareit_user"
  instance = google_sql_database_instance.instance.name
  password = "changeme"
}