variable "cluster_name" {
  default = "china"
}

variable "availability_zone" {
  default = "cn-hangzhou-b"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "vswitch_cidr" {
  default = "192.168.1.0/24"
}

variable "node_count" {
  default = 2
}

variable "machine_type" {
  default = "ec2.i2.xlarge"
}

variable "k8s_version" {
  default = "1.16.6-aliyun.1"
}

variable "image_type" {
  default = "AliyunLinux2"
}

variable "pod_cidr" {
  default = "10.0.0.0/16"
}

variable "cluster_addons" {
  description = "Addon components in kubernetes cluster"

  type = list(object({
    name      = string
    config    = string
  }))

  default = [
    {
      "name"     = "flannel",
      "config"   = "",
    },
    {
      "name"     = "flexvolume",
      "config"   = "",
    },
    {
      "name"     = "alicloud-disk-controller",
      "config"   = "",
    },
    {
      "name"     = "logtail-ds",
      "config"   = "{\"IngressDashboardEnabled\":\"true\"}",
    },
    {
      "name"     = "nginx-ingress-controller",
      "config"   = "{\"IngressSlbNetworkType\":\"internet\"}",
    },
  ]
}

variable "kube_cli" {			#K8S config & key files output path in your local machine
  default = {
    cfg = "./kubeconfig"
  }
}