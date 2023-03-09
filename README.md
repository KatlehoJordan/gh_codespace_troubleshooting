# GitHub Codespaces Troubleshooting

This repository is meant to provide a minimal example for troubleshooing issues when trying to use GitHub Codespaces.

## Branches

- `main`: This branch contains a minimal example of a Codespaces configuration that works.
- `broken`: This branch contains a minimal example of a Codespaces configuration that does not work.

## Steps to reproduce

Before doing any of the steps below, clone this repository.

### Verifying `main` branch works

#### Locally

1. On the `main` branch, open a VS Code Remote Containers session.
2. From a terminal in the VS Code Remote Containers session, run `Rscript hello.R`

#### In GitHub Codespaces

2. On the `main` branch, open the repository in GitHub Codespaces in a browser.
3. From the terminal in the browser session, run `Rscript hello.R`

### Verifying `broken` branch works locally

#### Locally with VS Code Remote Containers

1. On the `broken` branch, open a VS Code Remote Containers session.
2. From a terminal in the VS Code Remote Containers session, run `Rscript hello.R`

#### Locally with Docker

1. After having built the image locally in the previous steps, from any terminal session run `docker run --rm -i gh_codespace_troubleshooting-app`

### Verifying `broken` branch *does not work* in GitHub Codespaces

1. On the `broken` branch, open the repository in GitHub Codespaces in a browser.
2. Observe that the Codespace is not created.
3. Retrieve the logs from the Codespace creation process:

```

```
