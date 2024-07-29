# Dockerfile
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
#COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
