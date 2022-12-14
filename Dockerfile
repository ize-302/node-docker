#define what image to build from
FROM node:16
# Create app directory
WORKDIR /app
# Install app dependencies
# A wildcard is used to ensure both package.json AND yarn.lock are copied
# where available (npm@5+)
COPY package*.json ./

RUN yarn install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "yarn", "start" ]