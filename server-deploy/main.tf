provider "google" {
  project = "minecraft-server-gencyber"
  region  = "us-west4"
  zone    = "us-west4-b"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-standard-4"
  

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20220712"
      size = 20
      type = "pd-ssd"
    }
  }

  scratch_disk {
    interface = "SCSI"
    
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
        
    }
  }
}