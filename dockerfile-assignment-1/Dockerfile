FROM node:6-alpine

# the container should lisen on port 80 so expose it
EXPOSE 3000

# install required package as outlined by the brief
RUN apk add --no-cache tini

# create and go to location
WORKDIR /usr/src/app

# copy package.json
COPY package.json package.json

# install dependencies and clean-up
RUN npm install && npm cache clean --force

# copy the entire contents to the image
COPY . .

# run the app
CMD [ "/sbin/tini", "--", "node", "./bin/www" ]


