# Gunakan Node.js sebagai base image untuk tahap build
FROM node:20.11.1-alpine3.19 AS build

WORKDIR /app

# Salin file package.json dan package-lock.json (jika ada)
COPY package.json package-lock.json ./

# Instal dependensi menggunakan npm
RUN npm install

# Tambahkan node_modules ke PATH
ENV PATH /app/node_modules/.bin:$PATH

# Salin seluruh kode aplikasi ke dalam container
COPY . .

# Jalankan build aplikasi
RUN npm run build

# Gunakan Nginx sebagai base image untuk tahap deployment
FROM nginx:1.25.4-alpine3.18

# Salin konfigurasi nginx
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Salin hasil build dari tahap sebelumnya ke direktori yang digunakan oleh Nginx
COPY --from=build /app/dist /var/www/html/

# Buka port 3000
EXPOSE 3000

# Jalankan Nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]
