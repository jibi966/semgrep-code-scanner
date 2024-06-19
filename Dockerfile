FROM python:3.9-slim

RUN apt-get update && apt-get install -y git && pip install semgrep

WORKDIR /app

COPY run_semgrep.sh .

RUN chmod +x run_semgrep.sh

ENTRYPOINT ["./run_semgrep.sh"]