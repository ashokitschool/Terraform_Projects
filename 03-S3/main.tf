resource "aws_s3_bucket" "ashokits3bucket" {

	bucket = "${var.bucket_name}"
	acl = "private"

	versioning {
		enabled = true
	}
}