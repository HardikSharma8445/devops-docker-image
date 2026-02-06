FROM alpine:3.19

RUN apk add --no-cache \
    bash \
    jq \
    py3-pip \
    curl \
    git \
    python \

RUN pip3 install awscli

RUN add user -D devops
USER devops

WORKDIR /home/devops

CMD ["bash"]

