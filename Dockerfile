FROM klakegg/hugo:alpine


# Install pygments (for syntax highlighting) and bash
RUN apk update && \
    apk add bash git aws-cli && \
    apk -Uuv add groff less python3 && \
    rm -rf /var/cache/apk/*
