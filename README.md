# Instalación de ROS

Script de instalación atomática de ROS en Ubuntu. Actualmente sólo están
soportadas las versiones Melodic y Noetic de ROS 1. La versión por defecto es Noetic (para Ubuntu 20.4 LTS). Para instalar ROS Melodic (verisón soportada por las Jetson Nano) ver las opciones del script.

# Opciones

A continuación se presentan las opciones del script:
~~~
./installer.bash -h #Muestra la ayuda del script
./installer.bash -d #Especifica la distribución a instalar ["melodic", "noetic"]
./installer.bash -s #Establece el archivo de configuración del shell
./installer.bash -v #Establece la versińo de ROS a instalar ("Desktop-full" por defecto) ["Desktop-full", "Desktop", "ROS-Base"] 
~~~

# FSB Workspace
Este es el workspace de desarrollo driverless de Formula Student Bizkaia.


## Estructura del workspace:
```
~/fsbdriverless
  |__ build
  |__ devel
  |__ src
      |__ fsb_common
      |   |__ include
      |   |__ src
      |   |   |__ pointcludo_to_laserscan
      |   |   |__ py
      |
      |__ perception
      |   |...
      |
      |__ estimation
      |   |__ include
      |   |__ src
      |
      |__ control
          |...
```

## Source del workspace
Suponiendo que el el proyecto está clonado en $HOME:  
```
echo "source ~/FSBDriverless/workspace/devel/setup.bash">> ~/.bashrc
```

## Poincloud to laserscan launch
Para iniciar el modulo de pointcludo_to_laserscan es necesario ejecutar el
siguiente comando:
```
roslaunch fsb_common node_dv_2.launch
```
