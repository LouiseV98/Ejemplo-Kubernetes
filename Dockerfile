# Usa una imagen base de Python con la versión 3.9
FROM python:3.9

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de requerimientos (para instalar dependencias)
COPY requirements.txt /app

# Instala las dependencias usando pip
RUN pip install -r requirements.txt

# Copia el código fuente al contenedor
COPY app.py /app

# Expone el puerto 5000 (puerto en el que Flask ejecutará la API)
EXPOSE 5000

# Comando para correr la aplicación
CMD ["python", "app.py"]
