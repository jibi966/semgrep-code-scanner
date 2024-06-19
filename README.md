# semgrep-code-scanner

## build docker image

`docker build -t semgrep-scan .`

## run

`docker run --rm -v $(pwd)/results:/app/results semgrep-scan`

## change repo names

- navigate to `run_semgrep.sh` add repo name in repos
