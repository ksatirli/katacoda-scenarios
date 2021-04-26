Formatting and Validation are important (and fast!) tools to make your code quality better.

In this step, we will carry out two tasks:

1. Format code
2. Validate code

---

### Format code

The `terraform fmt` command rewrites configuration files to a canonical format and style.

`terraform fmt`{{execute}}

> ⚠️ We are executing `fmt` manually. Consider running this step automatically when you use Terraform.

The output should include one or more of the following files:

```text
outputs.tf
terraform.tf
variables.tf
```

When you have executed the command, close and re-open the `variables.tf`{{open}} file to see how it changed.

### Validate code

The `terraform validate` command validates the configuration files in a directory.

`terraform validate`{{execute}}

> ⚠️ We are executing `validate` manually. Consider running this step automatically when you use Terraform.

---

When you are ready, click _CONTINUE_ to go to the next step.
