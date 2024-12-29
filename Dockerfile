FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN apt-get update && apt-get install -y \
    python3 \
    make \
    g++ \
    && npm install \
    && rm -rf /var/lib/apt/lists/*

RUN npm install

# Copy the rest of the application code into the container
COPY . .

EXPOSE 3000

# Command to run your application
CMD [ "node", "index.js" ]

