FROM node:16-alpine

WORKDIR /usr/src/app

# Copy both package.json and package-lock.json (if available)
COPY package*.json ./

# Install all dependencies, including devDependencies
RUN npm install --only=development

# Copy the rest of the project files
COPY . . 

# Build the app
RUN npm run build

# Start the app
CMD ["npm", "start"]
