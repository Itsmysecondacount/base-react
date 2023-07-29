# Base image
FROM node:18-alpine3.17

# Set working directory
WORKDIR /app-react

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy other source code
COPY . .

# Expose port on which the app runs. This should be same as the one in the .env file
EXPOSE 5173

# Command to run the application
CMD [ "npm", "run", "dev" ]
