module "s3-resource-mod" {
  source = "../s3_resource"
  bucketNames = ["priyanka-bucket1", "priyanka-bucket2"]
  aclValue = "private"
  createBucket = var.createBucketValue
}

module "ec2-resource-mod" {
  source = "../ec2_resource"
  createInstance = var.createInstanceValue
  instanceType = var.instanceTypeValue
  instanceNames = ["priyanka-instance1", "priyanka-instance2"]
}