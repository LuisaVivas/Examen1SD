# Examen1SD

Parcial 1 de Sistemas Distribuidos

Universidad ICESI<br>
Luisa María Vivas Mayor<br>
Cód: A00276556<br>
Curso: Sistemas Distribuidos<br>
Docente: Daniel Barragán C.<br>
Tema: Automatización de infraestructura<br>
Correo:luisa.vivas@correo.icesi.edu.co<br>


Para la realización del aprovisionamiento de un ambiente compuesto por los siguientes elementos:

● Servidor de balanceo de carga.

● Dos Servidores web.

● Servidor de base de datos.

Se aplicó los conceptos vistos en clase, por tanto, se hizo uso de vagrant para proveer el ambiente requerido, ya antes explicado. Seguido de esto, pasamos a implementar 4 cookbooks principales, los cuales dentro de cada uno se hace la configuración necesaria.

Cada cookbooks contiene 4 directorios: Attributes, Files, Recipes, Templates.

Web: dentro de este cookbooks el directorio attributes contiene un archivo default.rb, que contiene todo los atributos necesarios para conectarse a la base de datos, es decir la ip de la base de datos, el usuario y la contraseña. Además, contiene archivos donde se instala el servicio web de apache, php y MySQL además de toda la configuración necesaria de puertos y archivos de despliegue de la aplicación.

Base de datos: en este cookbooks se instala la base de datos, se configura el esquema, los permisos iptables y se indica qué clientes pueden autenticarse y configurar el inicio de los servicios.

Balanceador: para este trabajo se hizo uso de nginx, que permite la distribución de peticiones que llegan al servidor entre varios servidores para atiendan, buscando optimizar el uso de los recursos, dentro de este cookbooks se encuentra toda la configuración necesaria de los archivos de configuración, las ip de los servidores que espera escuchar para ser atendidos. 
