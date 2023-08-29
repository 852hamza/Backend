# Use the official Node Alpine image
FROM node:alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Add metadata labels
LABEL Name="My Node Backend" \
      Version="1.0"

# Copy backend.js and package.json to the container
COPY backend.js package.json ./

# Initialize package.json with default values
RUN npm init -y

# Install Express and dotenv
RUN npm install express dotenv

# Expose port 3000
EXPOSE 3000

# Run the start command
CMD ["node", "backend.js"]
