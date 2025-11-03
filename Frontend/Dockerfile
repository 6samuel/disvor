# Use Node.js base image
FROM node:18

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

# Serve with a lightweight server
RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "dist"]
