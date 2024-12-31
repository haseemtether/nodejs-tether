# Use the official Node.js 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies and clean up apt cache
RUN apt-get update && apt-get install -y \
    python3 \
    make \  
    g++ \  
    && npm install \  
    && rm -rf /var/lib/apt/lists/* 

# Install npm dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run your application
CMD [ "node", "index.js" ]
