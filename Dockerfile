#Imagen base de Python
FROM python:slim-trixie
#Crear directorio principal en el contenedor
WORKDIR /app
#Copiar requirements.txt para instalar todas las librerías de Python necesarias
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
#Copiar el código fuente de la aplicación
COPY app.py app.py
#Exponemos el puerto en el que se va a ejecutar
EXPOSE 5000
#Indicamos el comando que tiene que ejecutar el contenedor
CMD ["python3" ,"-m", "flask", "run", "--host=0.0.0.0"]