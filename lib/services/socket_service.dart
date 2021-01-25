import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter/material.dart';

enum ServerStatus{
  Online,
  Offline,
  Connecting
}


class SocketService with ChangeNotifier{

  ServerStatus _serverStatus = ServerStatus.Connecting;
  IO.Socket _socket;

  ServerStatus get serverStatus => this._serverStatus;
  IO.Socket get socket => this._socket;

  Function get emit => this._socket.emit;
  
  SocketService(){
    this._initConfig();
  }

  void _initConfig(){
    // Dart client
    // Dart client
    this._socket = IO.io('http://192.168.0.8:3000', {
      'transports': ['websocket'],
      'autoConnect': true,
    });

    this._socket.on('connect', (_) {
      print('connect');
      this._serverStatus = ServerStatus.Online;
      notifyListeners();
    });

    this._socket.on('disconnect', (_) {
      this._serverStatus = ServerStatus.Offline;
      notifyListeners();
    });

    
  }
}