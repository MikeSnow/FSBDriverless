# FSBDriverless
Repositiorio del grupo de formula student bizkaia driverless 

## 1. Preparacion del entorno de simulacion
Para usar el entorno de driverless necesitaremos dos cosas, el simulador de formula student driverless "oficial" y el entorno de ros. 
Para poder trabajar en el mismo ordenador vamos a suponer que se tiene una distribucion de windows 10 o superior. 

### 1. Uso del simulador de Formula student.
#### 1. Requisitos del sistema.
Segun la web de [formula student](https://github.com/FS-Driverless/Formula-Student-Driverless-Simulator) se necesita: 
- 8 core 2.3Ghz CPU
- 12 GB memory
- 30GB free SSD storage (120GB when building the unreal project from source)
Recent NVidia card with Vulkan support and 3 GB of memory. (You can check the video card drivers by running vulkaninfo). Different brand video cards might work but have not been tested.

Pero con algunas caracteristicas menores tambien funciona correctamente. 
Actualmente hemos comprado que un lenovo yoga 720 funciona correctamente.
- Intel Core I7-7700 HQ a 2,80GHz
- 16 GB memory
- 2 GB de SSD 
- GTX 1050 de 2GB 

Asi que recomiendo segun de vaya probrando configuraciones para tener una mejor estimacion de que funciona y que no.

#### 2. Inicio del simulador 
Primero bajaremos el binario de la web : https://github.com/FS-Driverless/Formula-Student-Driverless-Simulator/releases
Actualmente la ultima version oficial es la 2.0

Haremos un GitClone del repositorio de formula student driverless en la carpeta `C:\Users\username\`

  git clone https://github.com/FS-Driverless/Formula-Student-Driverless-Simulator.git --recurse-submodules

Despues el contenido del zip descargado lo meteremos en la siguiente carpeta que sera la del repositorio que hemos clonado `C:\Users\username\Formula-Student-Driverless-Simulator`.

De tal manera deberia de quedar el binario y el fichero setting.json en el mismo nivel de carpeta.

Si lo hemos hecho todo bien, podremos iniciar el binario nos dejara escoger la pista , y al darle a run podremos manejar el coche con las flechas del teclado.

#### 3. Conexion con ROS 
El simulaador se puede conectar a traves de python o de ros para poder ser controlado con otros elementos externos. 
En nuestro caso nos vamos a centrar en la conexion con ROS ya que la idea es dejar listo el sistema que sea lo mas migrable al sistema fisico.

Para ello tendremos que tener instalado ros melodic en el apartado 2 indico como se instala Ros en WSL ( Windows for subsystem linux).

Una vez instalado tendremos que añadir las siguientes dependencias:
> sudo apt-get install ros-melodic-tf2-geometry-msgs python-catkin-tools ros-melodic-rqt-multiplot ros-melodic-joy ros-melodic-cv-bridge ros-melodic-image-transport libyaml-cpp-dev libcurl4-openssl-dev

Dentro de ubuntu haremos un link simbolico 
> ln -s /mnt/c/Users/[username]/Formula-Student-Driverless-Simulator ~/Formula-Student-Driverless-Simulator

Esto nos permitira trabajar desde ubuntu en la carpeta home siempre con los mismo ficheros sin estar volviendonos locos

Cambiaremos el repositorio al tag 2.0 . 
**IMPORTANTE** 
Usar siempre el repositorio con la misma version que el binario, en este caso para el 2021 sera la version 2.0

Desde la terminal de Ubuntu de wsl iremos a la carpeta : 
> cd ~/Formula-Student-Driverless-Simulator
> Airsim/setup.sh

Con esto se nos bajara y configurara el simulador en el que esta basado que es Airsim.

Configuraremos el entorno de catkin: 
>cd ros
>catkin init
>catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release #(Optional)
>catkin build

Una vez hecho esto , abriremos el simulador y lo dejaremos corriendo y desde la terminar de ubuntu iniciaremos.
>cd ros
>source devel/setup.bash
>roslaunch fsds_ros_bridge fsds_ros_bridge.launch

Si es todo correcto vemos que nodo de ros habra arrancado y con rviz podemos ver los sensores y en el simulador veremos que el imput habra cambiado de keyboard a API.

Con esto tendremos ya el simulador listo. 
Ahora veremos como hacer funcionar ROS en caso de no haberlo tenido listo.


### 2. Instalacion de ROS en WSL. 

En nuestro caso vamos a ver para instalar ros en WSL para poder ejecutar el simulador correctamente y asi poder trabajar sin necesidad del hardware fisico.
Lo primero sera instalar ubuntu, en este caso se podra instalar el WSL desde windows store, buscaremos por ubuntu 18.0 ya que es la ultima version que funciona con Ros melodic
Desde la web de [ROS](http://wiki.ros.org/melodic/Installation) tenemos diferentes opciones para instalar, 

En nuestro caso seleccionarios ubuntu y seria seguir los pasos.

  sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
 ``` 
 sudo apt install curl
 curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
 sudo apt update
 sudo apt install ros-melodic-desktop-full
 echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
 source ~/.bashrc
 sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
```
Con esto tendriamos ya ros instado y listo para usar.

### 3. Visualizacion de herramientas de ROS con gui en windows 10 y WSL

Si se dispone Windows 11 y WSL2.0 no hara falta nada ya que de forma nativa se pueden ejecutar las app de GUI de linux nativamente.

Para el resto habra que instalar un servidor X11 para que poder visualizarlo en linux.

//TODO

## 2. Preparacion entorno de jetson con ROS

//

