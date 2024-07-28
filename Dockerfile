FROM node:18.6.0-alpine

# Set the working directory to D:/Docker
WORKDIR /Docker

# Copy package.json to the working directory
COPY ./package.json .

# Install the dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Build the application
RUN npm run build

# Command to run the application
CMD ["node", "dist/main.js"]
