import 'package:api_testing/screen/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/contact/contact_view_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ContactViewModel()),
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'API Test',
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
