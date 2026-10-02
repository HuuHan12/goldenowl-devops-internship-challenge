FROM node:20-alpine AS build
WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

FROM node:20-alpine
WORKDIR /app
ENV PORT=3000
COPY --from=build /app/node_modules ./node_modules
COPY . .
USER node
EXPOSE 3000
CMD ["node", "index.js"]
