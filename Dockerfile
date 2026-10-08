# Archivo creado para la configuración de la imagen para docker
# Usar una imagen base
FROM python:3.14-bookworm
# Creando la carpeta de trabajo
WORKDIR /app
# Copiando archivos del proyecto al contenedor
# COPY ORIGEN DESTINO (. Directorio raiz)
COPY . .
# Instalando las dependencias del proyecto
RUN pip install -r requirements.txt
# Puerto que el contenedor escuchará
EXPOSE 5000
# Comando para ejecutar el contenedor
CMD ["python", "app.py"]
# Para generar imagen usar comando
# docker build -t nombre direccion_archivo_dockerfile
# docker build -t mi-app . (. dirección actual)