# BC Traductor - Business Central Extension Translator

Traductor automático de extensiones de Business Central de inglés a español con soporte para múltiples motores de traducción.

## 🚀 Características

- **Múltiples motores de traducción:**
  - Google Translate (gratuito)
  - Google Gemini AI
  - DeepSeek AI
  
- **Diccionario estándar de Business Central:** Prioriza la terminología oficial
- **Correcciones automáticas:** Ajusta traducciones para mantener consistencia con el estándar
- **Interfaz moderna:** Diseño profesional y responsive
- **Soporte Docker:** Despliegue fácil con Docker Compose

## 📋 Requisitos

- Python 3.8+
- Docker (opcional)

## 🔧 Instalación

### Opción 1: Entorno Virtual (Desarrollo Local)

1. Clonar el repositorio
```bash
git clone https://github.com/Zurichk/bctranslation.git
cd BCTraductor
```

2. Activar el entorno virtual
```powershell
.\.venv\Scripts\Activate.ps1
```

3. Instalar dependencias (ya instaladas en el entorno virtual)
```powershell
pip install -r app/requirements.txt
```

4. Configurar variables de entorno
```powershell
# Copiar .env.example a .env
cp .env.example .env

# Editar .env y agregar tus API keys
```

5. Ejecutar la aplicación
```powershell
cd app
python app.py
```

La aplicación estará disponible en: http://localhost:5039

### Opción 2: Docker

1. Configurar variables de entorno en `.env`

2. Construir y ejecutar
```powershell
docker-compose up --build
```

La aplicación estará disponible en: http://localhost:5039

## 🔑 Configuración de API Keys

Edita el archivo `.env` y agrega tus claves:

```env
# API Keys para servicios de traducción
DEEPSEEK_API_KEY=tu_api_key_aqui
GEMINI_API_KEY=tu_api_key_aqui

# Configuración del servidor
FLASK_PORT=5039
FLASK_ENV=development
FLASK_DEBUG=True
```

### Obtener API Keys

- **DeepSeek:** https://platform.deepseek.com
- **Gemini:** https://makersuite.google.com/app/apikey

## 📖 Uso

1. Accede a http://localhost:5039
2. Selecciona un archivo `.xlf` de Business Central
3. Elige el motor de traducción:
   - **Google Translate:** Gratis, buena calidad
   - **Gemini:** IA avanzada de Google
   - **DeepSeek:** Especializado en traducciones precisas
4. Haz clic en "Traducir Archivo"
5. Descarga el archivo traducido con sufijo `-es.xlf`

## 🗂️ Estructura del Proyecto

```
BCTraductor/
├── app/
│   ├── app.py                      # Aplicación Flask principal
│   ├── requirements.txt            # Dependencias Python
│   ├── diccionario.txt             # Diccionario estándar BC
│   ├── diccionarioprevio.txt       # Diccionario prioritario
│   ├── diccionario_arreglos.txt    # Correcciones automáticas
│   ├── templates/                  # Plantillas HTML
│   │   ├── base.html
│   │   ├── home.html
│   │   └── results.html
│   ├── static/                     # Archivos estáticos
│   └── traducciones/               # Archivos traducidos
├── .env                            # Variables de entorno
├── .env.example                    # Ejemplo de configuración
├── .gitignore                      # Archivos ignorados por Git
├── Dockerfile                      # Configuración Docker
├── docker-compose.yml              # Orquestación Docker
└── README.md                       # Este archivo
```

## 🎨 Características de la Interfaz

- Diseño moderno con gradientes y animaciones
- Sistema de tarjetas para estadísticas
- Selector visual de motores de traducción
- Indicadores de progreso
- Responsive design (móvil y escritorio)

## 🔄 Proceso de Traducción

1. **Búsqueda en diccionario prioritario** (`diccionarioprevio.txt`)
2. **Búsqueda en diccionario estándar** (`diccionario.txt`)
3. **Traducción con motor seleccionado** (si no hay coincidencia)
4. **Aplicación de correcciones** (`diccionario_arreglos.txt`)

## 🛠️ Desarrollo

### Estructura de Diccionarios

Los diccionarios usan el formato `clave~valor`:

```
Item~Producto
Card~Ficha
Post~Registrar
```

### Agregar Nuevo Motor de Traducción

1. Crear función de traducción en `app.py`
2. Agregar opción en `home.html`
3. Implementar lógica en `generar_xml()`

## 📝 Cambios Recientes

- ✅ Puerto cambiado de 5000 a 5039
- ✅ Soporte para múltiples motores de traducción
- ✅ Interfaz modernizada con Bootstrap 5
- ✅ Integración con DeepSeek y Gemini
- ✅ Sistema de variables de entorno
- ✅ Carpeta `code` renombrada a `app`

## 🤝 Contribuir

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la licencia MIT.

## 👤 Autor

**Adrián Espí Peña**

- LinkedIn: [Adrián Espí Peña](https://www.linkedin.com/in/adri%C3%A1n-esp%C3%AD-pe%C3%B1a-a74304185/)
- YouTube: [Canal de YouTube](https://www.youtube.com/channel/UCa9c3-J_onhqTzerBmbXWBw)
- Portfolio: [zurichk.github.io](https://zurichk.github.io/)

## 🙏 Agradecimientos

- Business Central Community
- Google Translate API
- OpenAI & DeepSeek
- Bootstrap Framework
