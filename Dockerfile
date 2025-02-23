# ใช้ Node.js เป็น Base Image
FROM node:18

# ตั้งค่า Working Directory
WORKDIR /app

# คัดลอกไฟล์ทั้งหมดไปยัง Container
COPY . .

# ติดตั้ง Dependencies
RUN npm install

# เปิดพอร์ต 3000
EXPOSE 3000

# คำสั่งรันแอป
CMD ["npm", "start"]
