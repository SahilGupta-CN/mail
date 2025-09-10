# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the source code
COPY . .

# Expose the port (update if your Express app uses another port)
EXPOSE 3000

# Define environment variable
ENV NODE_ENV=production

# Start the app
CMD ["npm", "start"]
