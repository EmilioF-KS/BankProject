FROM node:20 AS builder
WORKDIR /app
 
# Install dependencies
COPY package*.json ./
RUN npm install
 
# Build app
COPY . .

CMD ["npm", "run", "dev"]

 
# Production image
FROM node:20-alpine
WORKDIR /app
 
# Install lightweight static file server
RUN npm install -g serve
 
# Copy build output
COPY --from=builder /app/dist ./dist
 
# Cloud Run will listen on PORT
ENV PORT=5173
EXPOSE 5173
 
# Serve the built app
CMD ["serve", "-s", "dist", "-l", "5173"]