FROM node:7

RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN npm install -g grunt-cli

EXPOSE 8000
ENTRYPOINT ["grunt"]
CMD ["serve"]
