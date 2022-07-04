# Getting the node image from docker-hub
FROM node:15 

# Setting working directory as /app which is inside node image
WORKDIR /app

# Copy package.json file into /app
COPY package.json .

# Installing all the dependencies mentioned in package.json file
RUN npm install

# Copy all the files in /app
COPY . ./

# exposing PORT number
EXPOSE 3000

# command to run the application
CMD [ "node", "index.js" ]