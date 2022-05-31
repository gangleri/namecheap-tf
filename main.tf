
variable "domain_name" {
    type = string
    description = "domain name being setup with GH pages"
}
variable "github_handle" {
    type = string
    description = "GitHub handle used by GH Pages"
}

resource "namecheap_domain_records" "musicbigo-games-gh-pages" {
  domain = var.domain_name

  record {
    hostname = "@"
    type     = "A"
    address  = "185.199.108.153"
  }

  record {
    hostname = "@"
    type     = "A"
    address  = "185.199.109.153"
  }

  record {
    hostname = "@"
    type     = "A"
    address  = "185.199.110.153"
  }

  record {
    hostname = "@"
    type     = "A"
    address  = "185.199.111.153"
  }

  record {
    hostname = "www"
    type     = "CNAME"
    address  = "${var.github_handle}.github.io"
  }
}
