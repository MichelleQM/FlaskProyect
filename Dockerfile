#SO y python
FROM python:3.12-slim
#Crear carpeta de trabajo
WORKDIR /app
#Importar el proyecto a la carpeta
COPY . /app
#Instalar dependencias
RUN pip install --no-cache-dir -r requeriments.txt
#Exponer el puerto
EXPOSE 5000
#Ejecutar el proyecto
CMD ["python","app.py"]