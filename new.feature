feature:
login, ingresar a un sistema, autenticación, usuario, contraseña, seguridad, sesión, acceso, validación 
given: el usuario ingresa su nombre de usuario y contraseña
when: el sistema valida las credenciales
then: el usuario es autenticado y se le permite acceder al sistema
then: el estado de la sesión es activa y se muestra un mensaje de bienvenida 
status code: 200 OK

feature:
error de contraseña, autenticación fallida, usuario no autorizado, mensaje de error, seguridad, acceso denegado
given: el usuario ingresa un nombre de usuario válido pero una contraseña incorrecta
when: el sistema valida las credenciales
then: el usuario no es autenticado y se le muestra un mensaje de error indicando que la contraseña es incorrecta
then: el estado de la sesión permanece inactivo y se deniega el acceso al sistema
status code: 401 Unauthorized

feature:
problema de conexion, error de servidor, tiempo de espera, mensaje de error, seguridad, acceso denegado
given: el usuario intenta iniciar sesión pero el servidor no responde   
when: el sistema intenta validar las credenciales pero no puede establecer conexión con el servidor
then: el usuario no es autenticado y se le muestra un mensaje de error indicando que hay un problema de conexión
then: el estado de la sesión permanece inactivo y se deniega el acceso al sistema
status code: 503 Service Unavailable    