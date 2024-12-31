group "default" {
  targets = ["default", "dev"]
}

target "default" {
  context = "./ShinobiDocker"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["quay.io/seiferma/shinobi:latest", "quay.io/seiferma/shinobi:master"]
  args = {
    SHINOBI_BRANCH = "master"
  }
}

target "dev" {
  context = "./ShinobiDocker"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["quay.io/seiferma/shinobi:dev"]
  args = {
    SHINOBI_BRANCH = "dev"
  }
}