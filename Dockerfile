# Use official Node.js image as base
FROM node:14

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000 for the development server
EXPOSE 3000

# Start the development server
CMD ["npm", "start"]
