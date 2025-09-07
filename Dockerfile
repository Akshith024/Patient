# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy only index.js
COPY index.js .

# Install express globally (since no package.json)
RUN npm install express

# Expose the app port
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
