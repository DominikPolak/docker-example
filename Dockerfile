# Use the official Nginx image
FROM node:18-alpine

# Copy the HTML file to the Nginx web root
COPY . .

RUN npm install

# Expose the port Nginx is serving on
EXPOSE 3000

# Start Nginx
CMD ["node", "server.js"]