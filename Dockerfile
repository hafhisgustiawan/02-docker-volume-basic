FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# VOLUME [ "/app/feedback" ]

CMD [ "npm", "start" ]

#docker run -dp 80:80 --name feedback -v feedback:/app/feedback -v "C:/Users/User/Downloads/data-volumes-01-starting-setup:/app" -v app/node_modules feedback-app