import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/tarif.dart';

class TarifDetay extends StatefulWidget {
  final Tarif tarif;
  const TarifDetay({Key? key, required this.tarif}) : super(key: key);

  @override
  _TarifDetayState createState() => _TarifDetayState();
}

class _TarifDetayState extends State<TarifDetay> {
  int? _sliderDegeri = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tarif.baslik!),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.tarif.imageURL!),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.tarif.baslik!,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.tarif.malzemeler!.length,
                itemBuilder: (context, int index) {
                  final malzeme = widget.tarif.malzemeler![index];
                  return Text(
                    '${malzeme.miktar! * _sliderDegeri!} '
                    '${malzeme.olcek} '
                    '${malzeme.isim}',
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: "${_sliderDegeri! * widget.tarif.porsiyon!} porsiyon",
              value: _sliderDegeri!.toDouble(),
              onChanged: (yeniDeger) {
                setState(() {
                  _sliderDegeri = yeniDeger.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
