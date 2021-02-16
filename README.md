# Prueba técnica para TrueHome

Para cada uno de los desafios se uso `Python`, con las librerías de ciencias de datos, e.g. `scikit-learn`, con `Jupyter` para el desarrollo del análisis. 

Se uso una imagen ["oficial"](https://hub.docker.com/r/jupyter/datascience-notebook) de jupyter, con librerias para ciencia de datos ya incluidas, no hubo necesidad de añadir más.

## Respuesta



## Uso

Clona el repositorio, luego cambia el directorio de trabajo a la raiz del repositorio.


Para crear el entorno de ejecución, habiendo instalado docker, ejecuta las siguientes instrucciones en la terminal

```
docker build -t <image_tag> .
docker run --rm -p <external_port>:8888 -e JUPYTER_ENABLE_LAB=yes --name <container_name> -v "$PWD":/home/jovyan/work <image_tag>
```  
  
Entra al contenedor con `docker exec -it <container_name> /bin/bash` y executa `jupyter notebook list` para imprimir en pantalla el token secreto, es la porción después de `token=`, hasta antes del espacio en blanco.  

Finalmente, visitando `<hostname>:<external_port>/?token=<token_secreto>` en un navegador se accede a `JupyterLab`, de donde se pueden acceder a los notebooks. El directorio de trabajo actual está montado como `/home/jovyan/work`.  

Por ejemplo:

```
# creo la imagen
docker build -t truehome .
# inicio un contenedor efimero
docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes --name truehome_prueba_tecnica -v "$PWD":/home/jovyan/work truehome
# busco el token secreto de JupyterLab
docker exec -it truehome_prueba_tecnica /bin/bash
jupyter notebook list
# uso ese token para crear la dirección donde JupyterLab está disponible:
localhost:8888/?token=12d05338ebcb0259f511ceceaadd789cdffdef80d8a40675
# el token anterior es solo un ejemplo, ejecuta los pasos para encontrar el tuyo
```  

