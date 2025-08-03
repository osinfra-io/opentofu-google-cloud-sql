# Test
# https://opentofu.org/docs/cli/commands/test

# Mock Providers
# https://opentofu.org/docs/cli/commands/test/#the-mock_provider-blocks

mock_provider "google" {}

run "default" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }
}

variables {
  client_certs = [
    "mock-client-cert-a",
    "mock-client-cert-b"
  ]

  environment     = "mock-environment"
  host_project_id = "mock-host-project"
  instance_name   = "mock-instance"
  project         = "mock-project"
}
