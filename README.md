# BandNamesApp

aplicacion de band names app

### si tienes inconvenientes al instalar la aplicacion

la aplicacion se tiene que conectar activando los permisos de android `android:usesCleartextTraffic="true"` eso lo tendra que hacer en la ruta de la carpeta de android `main/app/src/androidManifest.xml`

## Provider

la version de provider a usar tiene que ser exclusiva mente la version `provider: ^4.3.3`
si quieres mas documentacion al respecto visita la siguiente documentacion `https://pub.dev/packages/provider`

## Backend
el backend esta echo con el servidor de node usando el frameworks de express, se tiene que usar exactamenter la version de socketIO 
`npm install socket.io@2.3.0` en el backend, por favor no instales la version 3.9 por que no servidar en el backend de todas formas dejo el link del backend aqui mismo
https://github.com/efraindrummer/flutter-socket.io-server.git

o tambien puedes clonar el repositorio con el siguiente comando `git clone https://github.com/efraindrummer/flutter-socket.io-server.git`
