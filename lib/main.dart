import 'package:bitstobytes/HomePage.dart';
import 'package:bitstobytes/helpers/theme.dart';
import 'package:bitstobytes/providers/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, theme, child) => MaterialApp(
          theme: theme.currentTheme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          title: 'Bits to Bytes',
          home: HomePage(),
        ),
      ),
    );
  }
}
