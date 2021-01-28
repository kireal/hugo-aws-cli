FROM klakegg/hugo:alpine


# Install pygments (for syntax highlighting) and bash
RUN apk update && \
    apk -Uuv add groff less python3 py3-pip curl unzip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    apk --purge -v del py3-pip && \
    rm -rf /var/cache/apk/* && \
    rm -fr aws && \
    rm -fr awscliv2.zip