output "public_certificate_pem" {
  value = "${element(concat(acme_certificate.platform_domain.*.certificate_pem, list("")), 0)}"
}

output "public_certificate_intermediate_pem" {
  value = "${element(concat(acme_certificate.platform_domain.*.issuer_pem, list("")), 0)}"
}
