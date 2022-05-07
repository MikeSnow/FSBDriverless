#! /bin/bash

# Script de configuración automática de una Jetson como servidor DHCP
# Establece una ip estática en el equipo e instala y configura el servidor
# La ip de red que se toma por defecto es 192.168.0.0/24
# DHCP para dar ips en el rango 192.168.0.10-192.168.0.100
# La ip estática por defecto es 192.168.0.2

NO_EXECUTION="FALSE"
INSTALL_DHCP="TRUE"
SET_STATIC_IP="TRUE"
UB_VERS="17.10"
STATIC_IP="192.168.0.2"
IP_RANGE="192.168.0.10 192.168.0.100" # Se usará en un futuro

############################################################
#                       HELP                               #
############################################################
function HELP(){
    # Display help
    echo "Script de configuración automática de red en Ubuntu"
    echo
    echo -e "\t-h\t Imprime la ayuda del script."
    echo -e "\t-r\t Revierte la configuración de red de la tarjeta."
}

############################################################
#                        UBUNTU JETSON                     #
############################################################
function instalarDHCP_JETSON(){
    echo "Aun no esta implementado"
}

function configurarIP_JETSON(){
    if [ "$SET_STATIC_IP" = "TRUE" ]; then
        sudo cat /etc/default/networking > ~/net_config/temp/networking 
        sudo cat /etc/network/interfaces > ~/net_config/temp/interfaces 

        sudo cat "CONFIGURE_INTERFACES=no" > /etc/default/networking

        sudo cat "auto eth0" > /etc/network/interfaces
        sudo cat "iface eth0 inet static" >> /etc/network/interfaces
        sudo cat "  address $STATIC_IP" >> /etc/network/interfaces
        sudo cat "  netmask 255.255.255.0" >> /etc/network/interfaces
        sudo cat "  gateway 192.168.1.1" >> /etc/network/interfaces

    else
        sudo cat ~/net_config/temp/networking > /etc/default/networking
        sudo cat ~/net_config/temp/interfaces > /etc/network/interfaces
    fi
}

############################################################
#                       MAIN                               #
############################################################
function version_ge(){
    aux=$(echo "$@" | tr " " "\n" | sort -rV | head -n 1)
    
    if [[ "$aux" == *"$1"* ]]; then 
        echo "TRUE"
    else
        echo "FALSE"
    fi
}

function main(){
    echo "Iniciando script..."

    LSB_MODULES_REQ=$(lsb_release -a | grep "No LSB modules are available")
    if [ ! -z "$LSB_MODULES_REQ" ]; then sudo apt install lsb-core ;fi
    
    DISTRO=$(lsb_release -a | grep "Distributor ID:")
    DISTRO=${DISTRO#Distributor ID:}
    VERSION=$(lsb_release -a | grep "Release:" | grep -hoE "[0-9]{1,}.[0-9]{1,}")

    echo -e "Se va a porceder con la configuración de red de este equipo:"
    echo -e "Distribución: $DISTRO $VERSION"


    read -p "¿Desea continuar? [S/n]" opcion
    case $opcion in
        S);;
        s);;
        *)exit 0;;
    esac

    aux=$(version_ge $VERSION $UB_VERS)
    if [ "$aux" = "TRUE" ]; then
        echo "Configurando para Jetson post $UB_VERS"
        if [ "$INSTALL_DHCP" = "TRUE" ]; then instalarDHCP_JETSON fi
        configurarIP_JETSON
    else
        echo "Version de Ubuntu Jetson no soportada"
    fi
}


# Process the input options
while getopts "h:r:" option; do
   case $option in
      h)
          HELP #Display help
          NO_EXECUTION="TRUE"
          ;; 
      r)
          SET_STATIC_IP="FALSE"
          INSTALL_DHCP="FALSE"
          main
          ;;
      \?)echo "ERROR: opción inválida. Prueba con -h para ver la ayuda.";;

   esac
done

# Si no se ha preguntado por la ayuda ejecutamos el script
if [ "$NO_EXECUTION" = "FALSE" ]; then main; fi
exit 0
