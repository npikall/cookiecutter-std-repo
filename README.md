# Cookiecutter Repository
Defines some basic files, which are used in my repositories.

## Installation

Install cookiecutter in your python environment:
```bash
pip install cookiecutter
```
You can also install source, see the [official installation documentation](https://cookiecutter.readthedocs.io/en/2.1.1/installation.html) of the cookiecutter project.

## Usage
Now if you want to generate an initial python project skeleton in this style, navigate to the folder which should contain the project root project folder and run this command:

```bash
cookiecutter https://github.com/npikall/cookiecutter-std-repo.git
```

## Dependencies
The repository uses `justfile` for task automation. To install `just`, visit
the [official repository](https://github.com/casey/just). Alternatively you could replace the `justfile` with a `Makefile`.