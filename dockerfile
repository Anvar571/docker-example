FROM node:15

WORKDIR /app

# docker containerga qaysi yaller ko'chisi kerakligi aytiladi
# xuddi projectni serverga qo'yishday gap
# keraksiz fayller ko'chirilmaydi
COPY package.json .

RUN npm install

COPY . ./


EXPOSE 3000

# node bu production holatda qo'ysa bo'ladi
# lekin developer holatda yoki test holatda yangilanib turishi kerak 
# shuning uchun nodemondan foydalanamiz 
CMD ["node", "src/index.js"]

# CMD ["npm", "run", "dev"]

