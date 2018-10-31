terragrunt {
terraform {
    source = "${path_relative_from_include()}/../../sources//${path_relative_to_include()}"

    extra_arguments "common_var" {
      commands = ["${get_terraform_commands_that_need_vars()}"]

      arguments = [
        "-var-file=${get_tfvars_dir()}/${path_relative_from_include()}/common.tfvars",
      ]
      }
      }
      }
