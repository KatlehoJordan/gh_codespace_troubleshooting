FROM ghcr.io/rocker-org/devcontainer/r-ver:4.2

COPY . .

CMD ["Rscript", "hello.r"]
