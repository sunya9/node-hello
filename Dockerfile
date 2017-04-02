FROM node:slim

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm set progress=false && npm install

COPY . /usr/src/app

EXPOSE 3333

CMD ["npm", "start"]