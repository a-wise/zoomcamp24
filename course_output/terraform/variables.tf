variable "credentials" {
  description = "My Credentials"
  default     = "./keys/my_creds.json"
}
variable "project" {
  description = "Project Name"
  default     = "dtc-de-course-397210"
}
variable "location" {
  description = "Project Location"
  default     = "europe-west1"
}

variable "region" {
  description = "Project Region"
  default     = "europe-west1"
}

variable "bq_dataset_name" {
  description = "My bq dataset name"
  default     = "demo_data"
}
variable "gcs_bucket_name" {
  description = "My gcp bucket name"
  default     = "dtc-de-course-397210-bucket"
}
variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
