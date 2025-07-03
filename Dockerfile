<<<<<<< HEAD
#dockerfile

# Use the official Node.js base image (lightweight Alpine Linux)
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Command to run your app
CMD [ "npm" , "start" ]

=======
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]
>>>>>>> 00ce7d8 (Initial commit)

