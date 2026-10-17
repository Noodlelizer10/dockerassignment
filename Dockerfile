# 1. Use the official Node.js base image version 16
FROM node:16

# 2. Set the working directory inside the container to /app
WORKDIR /app

# 3. Copy package.json to the working directory inside the container
COPY package.json ./

# 4. Install the application dependencies defined in package.json
RUN npm install

# 5. Copy the rest of the application source code files into the container
COPY . .

# 6. Document that the container process intends to listen on port 3000
EXPOSE 3000

# 7. Provide the runtime command to start your Node.js application
CMD ["npm", "start"]
