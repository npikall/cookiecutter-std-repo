# Justfile for managing common tasks

# default recipe to display help information
_default:
  @just --list

# Define variables and paths
env-file := "env.yml"
env-name := file_stem(env_var("PWD"))

# Placeholder variable for the package manager
pkg-manager := `if command -v mamba > /dev/null; then echo mamba; else echo conda; fi`

# Aliases
alias update := env-update
alias env := environment
alias remove := env-remove

# setup the environment
@environment:
    echo "{{GREEN}}Creating environment {{env-name}} from {{env-file}}{{NORMAL}}"
    {{ pkg-manager }} env create -n {{env-name}} -f {{env-file}}
    echo "{{GREEN}}Environment has been created{{NORMAL}}"

# update the environment
@env-update:
    echo "{{GREEN}}Updating environment {{env-name}} from {{env-file}}{{NORMAL}}"
    {{ pkg-manager }} env update -n {{env-name}} -f {{env-file}}
    echo "{{GREEN}}Environment has been updated{{NORMAL}}"

# remove the environment
@env-remove:
    echo "{{GREEN}}Removing environment {{env-name}}{{NORMAL}}"
    {{ pkg-manager }} env remove -n {{env-name}} --all --yes
    echo "{{GREEN}}Environment has been removed{{NORMAL}}"