FROM node:6

RUN adduser -D -h /app -H app

ADD . /app
RUN mkdir -p /app /app/public/quintype
RUN chown -R app:app /app

WORKDIR /app
USER app

RUN npm install

ENTRYPOINT ["node"]
CMD ["bin/server", "--port=3000"];
