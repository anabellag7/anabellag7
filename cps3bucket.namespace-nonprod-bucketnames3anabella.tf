# START AUTOCLOUD GENERATED CODE
# Results
# - Details: https://app.nonprod.autocloud.io/iac-catalog/clkd1cleu193330995gzxi1y1a?slug=getting_started_kms_encrypted_s_3_bucket&versionId=clkgz8xe4090608afothwcn2k 



module "cpkmskey-clkd1cleu193330995gzxi1y1a" {
  source                  = "cloudposse/kms-key/aws"
  version                 = "0.12.1"
  deletion_window_in_days = 14
  description             = "KMS key for encryption of encrypted S3 bucket -nonprod-bucketnames3anabella"
}

module "cps3bucket-clkd1cleu193330995gzxi1y1a" {
  source                       = "cloudposse/s3-bucket/aws"
  version                      = "3.1.2"
  allow_encrypted_uploads_only = true
  allow_ssl_requests_only      = true
  block_public_acls            = true
  block_public_policy          = true
  ignore_public_acls           = true
  kms_master_key_arn           = module.cpkmskey-clkd1cleu193330995gzxi1y1a.key_arn
  restrict_public_buckets      = true
  s3_object_ownership          = "BucketOwnerEnforced"
  sse_algorithm                = "aws:kms"
  versioning_enabled           = true
}



# END AUTOCLOUD GENERATED CODE