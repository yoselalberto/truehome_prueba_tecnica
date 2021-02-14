## Prueba técnica

### Aguas venenosas

### Haciendola de jamón

### El seductor canto de las sirenas

### Usage  

To create the environment execute the following in the terminal.  

```
docker build -t <image_tag> .
docker run --rm -p <external_port>:8888 -e JUPYTER_ENABLE_LAB=yes --name <container_mame> -v "$PWD":/home/jovyan/work <image_tag>
```  

for example:  

````
docker build -t truehome .
docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes --name truehome_prueba_tecnica -v "$PWD":/home/jovyan/work truehome
```
