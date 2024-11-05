# Use base image
FROM node:16-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Build the app for production (if needed)
RUN npm run build

# Start the app
CMD ["npm", "start"]
