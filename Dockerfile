# Use an official Node.js image as the base
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port Vite runs on (default is 5174 for dev)
EXPOSE 5174

# Command to run the application in development mode
CMD ["npm", "run", "dev"]
# RUN npm run dev