resource "google_storage_bucket_iam_member" "member" {
  provider = google
  bucket   = "dare-it-task-8"
  role     = "roles/storage.objectViewer"
  member   = "allUsers"
}

resource "google_storage_bucket" "static_site" {
  name          = "dare-it-task-8"
  location      = "EU"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_object" "static_site_src" {
  name   = "index.html"
  source = "website/index.html"
  bucket = google_storage_bucket.static_site.name
}

resource "google_storage_bucket_object" "static_site_src2" {
  name   = "style.css"
  source = "website/style.css"
  bucket = google_storage_bucket.static_site.name
}

resource "google_storage_bucket_object" "static_site_src3" {
  name   = "wine.jpg"
  source = "website/wine.jpg"
  bucket = google_storage_bucket.static_site.name
}

resource "google_storage_bucket_object" "static_site_src4" {
  name   = "reset.css"
  source = "website/reset.css"
  bucket = google_storage_bucket.static_site.name
}
