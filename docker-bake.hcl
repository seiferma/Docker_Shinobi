group "default" {
  targets = ["default"]
}

target "default" {
  context = "./ShinobiDocker"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["quay.io/seiferma/shinobi:latest"]
  args = {
    SHINOBI_BRANCH = "master"
  }
}
