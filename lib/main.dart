import 'package:flutter/material.dart';
import 'package:recipe_app/tarif_detay.dart';
import 'tarif.dart';

void main() {
  runApp(const MasterChef());
}

class MasterChef extends StatelessWidget {
  const MasterChef({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MasterChef',
      theme: ThemeData(
          colorScheme: const ColorScheme.dark(
              primary: Colors.black, secondary: Colors.greenAccent)),
      home: const MyHomePage(title: 'Bugün ne pişirsem?'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: Tarif.tarifler.length,
            itemBuilder: (context, int index) {
              return tarifKarti(Tarif.tarifler[index]);
            }),
      ),
    );
  }

  Widget tarifKarti(Tarif tarif) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return TarifDetay(tarif: tarif,);
        }));
      },
      child: Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage(tarif.imageURL!)),
              const SizedBox(
                height: 14.0,
              ),
              Text(
                tarif.baslik!,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
