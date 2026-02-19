# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container
WORKDIR /app

# Menyalin seluruh source code dari lokal ke working directory container
COPY . .

# Menentukan environment variable: mode produksi dan host database ke item-db
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080 agar bisa diakses
EXPOSE 8080

# Menjalankan perintah 'npm start' saat container diluncurkan
CMD ["npm", "start"]