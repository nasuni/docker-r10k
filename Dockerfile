FROM ruby:2.5-alpine
LABEL maintainer "Stas Alekseev <salekseev@nasuni.com>"

ENV R10K_VERSION 2.5.5

# Install packages
RUN apk --no-cache add bash git tini

# Install R10K
RUN gem install r10k -v ${R10K_VERSION} --no-ri --no-rdoc

# Entrypoint
ENTRYPOINT ["/usr/local/bundle/bin/r10k"]

# Metadata params
ARG VERSION
ARG VCS_URL
ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.name="VGH R10K" \
      org.label-schema.url="$VCS_URL" \
      org.label-schema.vendor="Stas Alekseev" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.version="$VERSION" \
      org.label-schema.vcs-url="$VCS_URL" \
      org.label-schema.vcs-ref="$VCS_REF" \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.docker.schema-version="1.0"
