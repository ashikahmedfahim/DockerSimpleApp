#get the base image
FROM node:16-alpine

# set the working directory
WORKDIR /usr/app

#copy the necessary files
COPY ./package.json ./
RUN npm install
COPY ./ ./

#provide the startup command
CMD ["node","app"]