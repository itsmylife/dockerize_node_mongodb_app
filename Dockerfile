FROM node:10

# create app directory
WORKDIR /usr/src/app

# install app dependencies
# a wildcard is used to ensure both package.json and package-lock.json are copied
COPY package.json ./
COPY yarn.lock ./

RUN yarn install

# bundle app source
COPY . .

EXPOSE 8080

CMD ["yarn", "start"]
