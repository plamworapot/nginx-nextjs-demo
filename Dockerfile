FROM mhart/alpine-node

WORKDIR /app
COPY ./app .

RUN yarn install
RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]