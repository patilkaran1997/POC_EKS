# Use the official Node.js image as the base image
FROM node:16 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if it exists) for npm install
COPY frontend/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code from your frontend/src/ directory to the container
COPY frontend/src/ ./src
COPY frontend/public/ ./public

# Run the build command to generate the production build
RUN npm run build

# Install a static server to serve the build (optional, based on how you serve the app)
RUN npm install -g serve

# Expose the port (usually 3000 for React apps)
EXPOSE 3000

# Serve the build folder using the 'serve' package
CMD ["serve", "-s", "build", "-l", "3000"]
