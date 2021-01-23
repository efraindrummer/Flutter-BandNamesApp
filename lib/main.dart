import 'package:bandnamesapp/services/socket_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:bandnamesapp/pages/home.dart';
import 'package:bandnamesapp/pages/status.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => SocketService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'status',
        routes: {
          'home':(_) => HomePage(),
          'status':(_) => StatusPage()
        },
      ),
    );
  }
}