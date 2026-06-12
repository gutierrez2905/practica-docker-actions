# Usamos una imagen oficial y ligera de Python
FROM python:3.9-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos de tu computadora al contenedor
COPY . /app

# Instalamos las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# El comando que se ejecuta cuando el contenedor arranca
CMD ["python", "app.py"]