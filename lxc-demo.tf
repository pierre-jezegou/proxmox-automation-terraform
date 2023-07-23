resource "proxmox_lxc" "lxc-demo" {
    target_node     = var.TARGET_NODE
    hostname        = "lxc-basic"
    ostemplate      = "${var.EXTERNAL_STORAGE}:vztmpl/debian-12-standard_12.0-1_amd64.tar.zst"
    password        = var.LCX_PASSWORD
    unprivileged    = false
    start           = true
    vmid            = 0 # Next available vmid used
    cores           = 1
    description     = "LXC Terraform template"

    rootfs {
        storage = "nas"
        size    = "3G"
    }

    network {
        name    = "eth0"
        bridge  = "vmbr0"
        ip      = "dhcp"     
    }

    # No nameserver specified -> Proxmox host values
}


#### VARIABLES ####

variable "LCX_PASSWORD" {
    type = string
    sensitive = true
}

variable "TARGET_NODE" {
    type = string
}

variable "EXTERNAL_STORAGE" {
    type = string
}