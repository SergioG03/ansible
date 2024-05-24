# Ansible

A realizar: Realizaremos 3 .yml que realizarán los siguientes pasos:
1. 1er fichero. yml:
    - Instalamos nano y Python en el primer .YML
2. 2o fichero .yml:
    - En este segundo fichero, creamos un entorno virtual de Python.
4. 3o fichero .yml
    - En el tercer fichero, ejecutaremos un script Python que imprimirá "Hola".

Ahora teniendo Docker instalado vamos a ejecutar los siguientes pasos:

-Abrimos el terminal y usamos el comando "docker images" para mostrar las imágenes que tenemos en nuestro ordenador.

![ansible](imagenes/imagen1.png)

-Este es el DockerFile que ejecutaremos para crear la imagen de Docker que incluirá los playbooks.

![ansible](imagenes/imagen2.png)

Creamos la carpeta de "playbooks" en la que guardamos los 3 .yml que hemos creado. 

-El primero que crearemos será el de instalación, para poder realizar los siguientes pasos.
![ansible](imagenes/imagen3.png)

-El segundo que crearemos será el playbook que crea el entorno virtual en Python, ahora ya que tenemos instalado Python.
![ansible](imagenes/imagen4.png)

-Por último ejecutaremos el script de Python que ejecuta el mensaje "Hola".
![ansible](imagenes/imagen5.png)

Una vez creamos los playbook para montar el docker ejecutaremos el siguiente comando:
**docker build -t ansible-container .**
![ansible](imagenes/imagen6.png)

-Después de construir el Docker debemos ejecutar el contenedor para ello ejecutamos el comando **docker run ansible-container**

-Vemos que se ejecuta correctamente

![ansible](imagenes/imagen7.png)


