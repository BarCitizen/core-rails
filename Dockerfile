FROM ghcr.io/penguincloud/core AS BUILD
LABEL company="Penguin Tech Group LLC"
LABEL org.opencontainers.image.authors="info@penguintech.io"
LABEL license="GNU AGPL3"

# GET THE FILES WHERE WE NEED THEM!
COPY . /opt/manager/
WORKDIR /opt/manager


# PUT YER ARGS in here
ARG APP_TITLE="CORE-RAILS"
ARG SECRET_KEY_BASE="defaultsecret"
ARG RUBY_VERSION="3.2.2"
ARG RUBY_INSTALLER_VERSION="0.9.3"
ARG RAILS_ENV="production" 
ARG RAILS_VERSION="7.0.4"
ARG NODE_VERSION="20"
ARG NODE_KEYURL="https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key"

# BUILD IT!
RUN ansible-playbook entrypoint.yml -c local --tags build

# PUT YER ENVS in here
ENV HELLO="WORLD"

# Switch to non-root user
#USER ptg-user

# Entrypoint time (aka runtime)
ENTRYPOINT ["/bin/bash","/opt/manager/entrypoint.sh"]
