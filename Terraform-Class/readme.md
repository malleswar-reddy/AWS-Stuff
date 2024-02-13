<a name="readme-top"></a>

# Terraform setup ==> terraform.io/downloads.html

Terraform ==>

main.tf ==>

1.Provider Block

2.Resource Block

1. we will create one EC2 instance ==> Linux machine

Terraform commands

```sh

terraform init
terraform validate
terraform plan
terraform apply -auto-approve
terraform destroy

```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Main commands

* init          Prepare your working directory for other commands

  ```sh
   terraform init
   ```

* validate      Check whether the configuration is valid
* plan          Show changes required by the current configuration
* apply         Create or update infrastructure
* destroy       Destroy previously-created infrastructure

### All other commands

* console       Try Terraform expressions at an interactive command prompt
* fmt           Reformat your configuration in the standard style
* force-unlock  Release a stuck lock on the current workspace
* get           Install or upgrade remote Terraform modules
* graph         Generate a Graphviz graph of the steps in an operation
* import        Associate existing infrastructure with a Terraform resource
* login         Obtain and save credentials for a remote host
* logout        Remove locally-stored credentials for a remote host
* metadata      Metadata related commands
* output        Show output values from your root module
* providers     Show the providers required for this configuration
* refresh       Update the state to match remote systems
* show          Show the current state or a saved plan
* state         Advanced state management
* taint         Mark a resource instance as not fully functional
* test          Execute integration tests for Terraform modules
* untaint       Remove the 'tainted' state from a resource instance
* version       Show the current Terraform version
* workspace     Workspace management

### Global options (use these before the subcommand, if any)

* -chdir=DIR    Switch to a different working directory before executing the
                given subcommand.
* -help         Show this help output, or the help for a specified subcommand.
* -version      An alias for the "version" subcommand.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Security group resource block
 
  * Enable ==> port 22 ==> ssh
  * Associate with lunix machine
  * key pair menctio
  * we will be create one output block ==> IP adress

