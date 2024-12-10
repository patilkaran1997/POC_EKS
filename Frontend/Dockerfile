# Step 1: Set the base image
FROM node:16 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY frontend/package*.json ./

# Install dependencies
RUN npm install

# Copy the source code from your frontend/src/ directory to the container
COPY frontend/src/ ./src/

# Copy the public directory from frontend to the container
COPY frontend/public/ ./public/

# Run the build command to generate the production build
RUN npm run build

# Set the final image and serve the built application (optional)
FROM nginx:alpine

# Copy the build folder to nginx's public directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose the port the app will run on
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
