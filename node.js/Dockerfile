# Use the official Node.js image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port (adjust as needed)
EXPOSE 3000

# Set the default command (adjust if necessary)
CMD ["node", "index.js"]
