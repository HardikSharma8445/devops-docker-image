FROM alpine:3.19

RUN apk add --no-cache \
    bash \
    jq \
    curl \
    git \
    python3 \
    awscli \
    py3-pip 

RUN add user -D devops
USER devops

WORKDIR /home/devops

CMD ["bash"]

