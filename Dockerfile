FROM klakegg/hugo:alpine


# Install pygments (for syntax highlighting) and bash
RUN apk update && \
    apk add bash git && \
    apk -Uuv add groff less python3 py3-pip && \
    pip3 install awscli && \
    apk --purge -v del py3-pip && \
    rm -rf /var/cache/apk/*
