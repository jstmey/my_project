import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Produk'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: ListTile(
                      leading: Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.8F_JTLj-N3DU6L88lWLs2AHaFm%26pid%3DApi&f=1"),
                      title: const Text(
                        "HP Laptop 14s-dk1506AU",
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: const Text(
                        "Teknologi canggih yang bisa digunakan untuk berbisnis",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
