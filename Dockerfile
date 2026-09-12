FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install express cors node-telegram-bot-api
EXPOSE 3000
CMD ["sh", "-c", "FILE=$(find . -name '*server*.js' | head -n 1); node $FILE"]
