# START AUTOCLOUD GENERATED CODE
# Results
# - Details: https://app.stage.autocloud.io/iac-catalog/clkhawju11312079lfs47czw5?slug=getting_started_kms_encrypted_s_3_bucket&versionId=clkhaz0xr2507086aebm0q6tb 



module "cpkmskey-clkhawju11312079lfs47czw5" {
  source                  = "cloudposse/kms-key/aws"
  version                 = "0.12.1"
  deletion_window_in_days = 14
  description             = "KMS key for encryption of encrypted S3 bucket -nonprod-bucketnames3"
}

module "cps3bucket-clkhawju11312079lfs47czw5" {
  source                       = "cloudposse/s3-bucket/aws"
  version                      = "3.1.2"
  allow_encrypted_uploads_only = true
  allow_ssl_requests_only      = true
  block_public_acls            = true
  block_public_policy          = true
  ignore_public_acls           = true
  kms_master_key_arn           = module.cpkmskey-clkhawju11312079lfs47czw5.key_arn
  restrict_public_buckets      = true
  s3_object_ownership          = "BucketOwnerEnforced"
  sse_algorithm                = "aws:kms"
  versioning_enabled           = true
}



# END AUTOCLOUD GENERATED CODE