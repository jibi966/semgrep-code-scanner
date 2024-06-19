# semgrep-code-scanner

## build docker imnage

`docker build -t semgrep-scan .`

## run

`docker run --rm -v $(pwd)/results:/app/results semgrep-scan`
