FROM node:23.3.0-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json /app/

# Install dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . /app/

# Expose the application port
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
