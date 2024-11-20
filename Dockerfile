# 1. Usar la imagen oficial de Node.js como base
FROM node:18

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar los archivos package.json y package-lock.json (si existe)
COPY package*.json ./

# 4. Instalar las dependencias
RUN npm install

# Copiar el resto del código fuente
COPY . .

# 6. Generar el cliente de Prisma
RUN npx prisma generate

# 7. Exponer el puerto en el que la API escuchará
EXPOSE 3000

# 7. Comando para ejecutar en modo desarrollo con hot-reload
CMD ["npm", "run", "dev"]