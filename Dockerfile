# Use an official Node.js image as the base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port Vite runs on (default is 5173 for dev)
EXPOSE 5173

# Command to run the application in development mode
# CMD ["npm", "run", "dev"]
npm run dev