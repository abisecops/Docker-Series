# Use the official Node.js image as a parent image
FROM node:18 AS build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the React application
RUN yarn build

# Use a lightweight web server image to serve the static files
FROM nginx:alpine

# Copy the build output from the previous stage
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# The default command to run the web server
CMD ["nginx", "-g", "daemon off;"]
