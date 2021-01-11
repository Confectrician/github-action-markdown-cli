FROM node:lts-alpine

# hadolint ignore=DL3018
RUN npm install --global --production markdownlint-cli@v0.26.0 \
  && apk --update --no-cache add curl jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
