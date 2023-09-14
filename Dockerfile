# Use an official Node.js runtime as a parent image
FROM node:18.17.1

# Set the working directory within the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Next.js application production
# RUN npm run build

# Expose the port that the Next.js app will run on (3000 by default)
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "run", "dev"]