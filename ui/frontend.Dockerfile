# 1. Use a lightweight Node.js image as the base
FROM node:20-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# 4. Install production dependencies
RUN npm install --production

# 5. Copy the rest of your application code (server.js and index.html)
COPY . .

# 6. Expose port 4200 so the container can accept traffic
EXPOSE 4200

# 7. Command to start your frontend application
CMD ["node", "server.js"]