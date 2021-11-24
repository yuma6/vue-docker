FROM node:16-alpine3.12
WORKDIR /app
RUN apk update && \
    apk add --no-cache git curl && \
    curl -o- -L https://yarnpkg.com/install.sh | sh
ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

ENV CHOKIDAR_USEPOLLING=true
RUN yarn global add @vue/cli

EXPOSE 8080

CMD ["/bin/sh"]