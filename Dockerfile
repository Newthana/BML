# ใช้ base image nginx (เว็บเซิร์ฟเวอร์เบาและเร็ว)
FROM nginx:alpine

# ลบ default index.html ของ nginx ออก
RUN rm -rf /usr/share/nginx/html/*

# คัดลอกไฟล์ของเราเข้าไปใน path ของ nginx
COPY . /usr/share/nginx/html

# เปิดพอร์ต 80
EXPOSE 80

# รัน nginx
CMD ["nginx", "-g", "daemon off;"]
