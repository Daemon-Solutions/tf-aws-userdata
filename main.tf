resource "template_file" "file" {
  lifecycle {
    create_before_destroy = true
  }

  template = "${var.template}"
  vars {
    product = "${var.product}"
    envname = "${var.envname}"
    envtype = "${var.envtype}"
    region  = "${var.region}"
    domain  = "${var.domain}"
    role    = "${var.role}"
  }
}
