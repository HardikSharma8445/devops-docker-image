FROM alpine:3.19

RUN apk add --no-cache \
    bash \
    curl \
    git \
    jq \
    python3 \
    py3-pip \
    aws-cli

RUN adduser -D devops
USER devops

WORKDIR /home/devops

CMD ["bash"]