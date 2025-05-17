FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Force install dependencies
RUN npm install -f

# Copy source code
COPY . .

# Build the Vite app
RUN npm run build

# Expose the port Vite preview will run on
EXPOSE 4173

# Start the Vite preview server
CMD ["npm", "run", "preview"]
