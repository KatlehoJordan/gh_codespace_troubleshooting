# GitHub Codespaces Troubleshooting

This repository is meant to provide a minimal example for troubleshooting issues when trying to use GitHub Codespaces.

This repository was created to support the bug-report and discussion [here](https://github.com/community/community/discussions/49590).

Briefly, Codespaces successfully builds a codespace if the `devcontainer.json` instructs to build from a `Dockerfile`. However, if the `devcontainer.json` instructs to use a `docker-compose.yml`, Codespaces will not build even if that `docker-compose.yml` file is using the same exact `Dockerfile`.

## Branches

- `main`: This branch contains a minimal example of a Codespaces configuration that works (i.e., does not use `docker-compose.yml`).
- `broken`: This branch contains a minimal example of a Codespaces configuration that does not work (i.e., uses `docker-compose.yml`).
- `fixed`: This branch fixed the issue by updating the version specified in `docker-compose.yml` as tipped by the GitHub codespaces team [here](https://support.github.com/ticket/personal/0/2048489)

## Steps to reproduce

Before doing any of the steps below, clone this repository.

### Verifying `main` branch works

#### Locally

1. On the `main` branch, open a VS Code Remote Containers session.
2. From a terminal in the VS Code Remote Containers session, run `Rscript hello.R`

#### In GitHub Codespaces

1. On the `main` branch, open the repository in GitHub Codespaces in a browser.
2. From the terminal in the browser session, run `Rscript hello.R`

### Verifying `broken` branch works locally

#### Locally with VS Code Remote Containers

1. On the `broken` branch, open a VS Code Remote Containers session.
2. From a terminal in the VS Code Remote Containers session, run `Rscript hello.R`

#### Locally with Docker

1. After having built the image locally in the previous steps, from any terminal session run `docker run --rm -i gh_codespace_troubleshooting-app`

### Verifying `broken` branch *does not work* in GitHub Codespaces

1. On the `broken` branch, open the repository in GitHub Codespaces in a browser.
2. Observe that the Codespace is not created, and a recovery container is created instead.
3. Retrieve the logs from the Codespace-creation process:

```
Failed to create container.
Error: Command failed: docker-compose -f /var/lib/docker/codespacemount/workspace/gh_codespace_troubleshooting/docker-compose.yml -f /var/lib/docker/codespacemount/.persistedshare/docker-compose.codespaces.yml config
Error Code: 1302
Container creation failed.
```
