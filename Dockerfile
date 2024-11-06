FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the container
COPY package*.json ./

# Install all dependencies (including devDependencies)
RUN npm install

# Copy the application files to the container
COPY . .

# Build the application (this will fail if any TypeScript errors are found)
RUN npm run build

# Define the command to run the application
CMD ["npm", "start"]
