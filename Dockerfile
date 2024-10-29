# Development stage 
FROM node:16-alpine AS development
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install all dependencies for development
RUN npm install

# Copy source files
COPY . .

# Build the TypeScript app
RUN npm run build

# Production stage
FROM node:16-alpine AS production
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install only production dependencies
RUN npm ci --omit=dev

# Copy built files from development stage
COPY --from=development /usr/src/app/dist ./dist

# Start the application (if you're using a specific start script)
CMD ["node", "dist/server.js"]
