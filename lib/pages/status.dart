
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bandnamesapp/services/socket_service.dart';


class StatusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final socketService = Provider.of<SocketService>(context);
    //socketService.socket.emit(event)

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ServerStatus: ${socketService.serverStatus}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: (){
          socketService.emit('emitir-mensaje', {
            'nombre': 'Flutter', 
            'mensaje': 'Hola desde Flutter'
          });
        },
      ),
    );
  }
}