import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter/material.dart';

enum ServerStatus{
  Online,
  Offline,
  Connecting
}


class SocketService with ChangeNotifier{

  ServerStatus _serverStatus = ServerStatus.Connecting;

  get serverStatus => this._serverStatus;
  
  SocketService(){
    this._initConfig();
  }

  void _initConfig(){
    // Dart client
    // Dart client
    IO.Socket socket = IO.io('http://192.168.0.8:3000', {
      'transports': ['websocket'],
      'autoConnect': true,
    });

    socket.on('connect', (_) {
      print('connect');
      this._serverStatus = ServerStatus.Online;
      notifyListeners();
    });

    socket.on('disconnect', (_) {
      this._serverStatus = ServerStatus.Offline;
      notifyListeners();
    });
    
  }
}