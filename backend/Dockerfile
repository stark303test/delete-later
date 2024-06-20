# Techdome-backend/Dockerfile

# Use a lightweight Node.js image based on Alpine Linux
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages
RUN npm install

# Copy the rest of the application code
COPY . .

# Copy the .env file from the host to the container
COPY .env .env

# Expose the port the app runs on
EXPOSE 5000

# Define environment variable
ENV NODE_ENV production

# Run the app
CMD ["npm", "start"]
