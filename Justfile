# Justfile for managing common tasks

# default recipe to display help information
_default:
  @just --list

# Define variables and paths
env_file := "env.yml"
env_name := pwd

# Aliases
alias update := env-update
alias env := environment

# setup the environment
@environment:
    @echo "{{GREEN}}Creating environment {{env_name}} from {{env_file}}{{NORMAL}}"
    mamba env create -n {{env_name}} -f {{env_file}}
    @echo "{{GREEN}}Environment has been created{{NORMAL}}"

# update the environment
@env-update:
    echo "{{GREEN}}Updating environment {{env_name}} from {{env_file}}{{NORMAL}}"
    mamba env update -n {{env_name}} -f {{env_file}}
    echo "{{GREEN}}Environment has been updated{{NORMAL}}"
