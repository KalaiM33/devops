resource "aws_kinesis_stream" "nautilus-stream" {
  name             = "nautilus-stream"
  shard_count      = 1
  retention_period = 24

  tags = {
    Environment = "devops"
    Team = "Nautilus"
  }
   lifecycle {
    ignore_changes = [tags]
  }
}
