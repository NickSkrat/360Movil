# 360Movil

#Contexto

* Creación del proyecto 360Movil desarrollado en .NetFramework MVC5 con capa de repositorio en Visual Basic.

#Creacion de base de datos

* Ejecutar el archivo sql ubicado en raiz del proyecto **360Movil.sql**.

#Connection String

* En la ruta **360Movil.Repository/Connection/BdConnection.vb** en caso de que si es necesario la cadena de conexión en la linea 5.

<code>
  Public Connection As New SqlConnection("Data Source=localhost; Initial Catalog=360Movil; User ID=sa; Password=Test_Movil360")
</code>

* Data Source = Servidor de la bd alojada.
* Initial Catalog = Base de datos a interactuar.
* User ID = Usuario de base de datos.
* Password = Contraseña de la basse de datos
