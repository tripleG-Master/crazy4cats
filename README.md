# Nombre del Proyecto

Crazy4Cats
Proyecto que muestra la relacion N:N de usuarios y likes a traves de

## Requisitos

- Ruby (versión específica, por ejemplo, 3.0.0)
- Rails (versión específica, por ejemplo, 6.1.4)
- PostgreSQL

## Instalación
Sigue estos pasos para configurar el proyecto en tu máquina local:

1. Clona el repositorio de GitHub.
git clone https://github.com/tu_usuario/nombre_del_proyecto.git

2. Dentro de la carpeta raiz del proyecto busca el archivo config/database.yml y editalo con tus parametros de base de datos

default: &default
    username: tu_usuario
    password: tu_contraseña


3. Dentro de la carpeta del proyecto, ejecuta los siguientes comandos

rails db:create
rails db:migrate
rails db:seed

## Ejecución

4. Dentro de la carpeta del proyecto, ejecuta los siguientes comandos

rails s

## Implementación

A excepcion de la funcionalidad mailer y los roles, el proyecto consta de una aplicación web que permite a sus usuarios registrados postear fotos de tus gatos, comentar y reaccionar a las publicaciones. Ademas los usuarios sin registrar pueden comentar los posts.

Los usuarios disponibles para pruebas son:

catlover@crazy4cats.com
<div style="page-break-after: always;"></div>
migthycat@mail.com
<div style="page-break-after: always;"></div>
nonloon@mail.com 
<div style="page-break-after: always;"></div>
testing@mail.com

La contraseña es "password"

Puedes registrarte en el sitio web con tus credenciales y disfrutar de las funcionalidades.

## 