FROM node:10.0

# prepare a user which runs everything locally! - required in child images!
RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app

ARG VERSION=latest

WORKDIR $HOME

RUN npm install -g @angular/cli@${VERSION}

EXPOSE 4200