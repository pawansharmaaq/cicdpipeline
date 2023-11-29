# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all project files to the container
COPY . .

# Build the React app for production
RUN npm run build

# Expose port 80 for the application
EXPOSE 80

# Define the command to start the application
CMD ["npm", "start"]
