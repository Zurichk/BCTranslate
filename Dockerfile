FROM python:3.10-slim

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos de la aplicación
COPY ./app /app

# Actualizar pip e instalar dependencias
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Variables de entorno para Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV PYTHONUNBUFFERED=1

# Puerto configurable (por defecto 5039)
ENV FLASK_PORT=5039

EXPOSE 5039

# Comando de inicio
CMD ["python", "app.py"]