import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}


//left - start - leading
//right - end - trailing

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksegligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği : $ekranYuksegligi");
    print("Ekran Yüksekliği : $ekranGenisligi");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title:  Text(d!.pizzaBaslik,style: TextStyle(color: yaziRenk1,fontFamily: "Pacifico",fontSize: ekranGenisligi/19),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(

        children: [
          Padding(
            padding:  EdgeInsets.only(top: ekranYuksegligi/43,),
            child: Text("Beef Cheese", style: TextStyle(color: anaRenk,fontSize: 35,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset("resimler/pizza_resim.jpeg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row (mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
               Chip(icerik: d.peynirYazi),
                Chip(icerik: d.sucukYazi),
                Chip(icerik: d.zeytinYazi),
                Chip(icerik: d.biberYazi),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure, style: TextStyle(color: yaziRenk2,fontSize: 22,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,top: 8),
                  child: Text(d.teslimatBaslik, style: TextStyle(color: anaRenk,fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama,
                  style: TextStyle(color: yaziRenk2,fontSize: 22),textAlign: TextAlign.center,),

              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(d.fiyat, style: TextStyle(color: anaRenk,fontSize: 44,fontWeight: FontWeight.bold),),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(width: 200,height: 50,
                      child: TextButton(onPressed: (){},
                        child: Text(d.buttonYazi,style: TextStyle(color: yaziRenk1,fontSize: 18),),
                        style: TextButton.styleFrom(
                            backgroundColor: anaRenk,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),

                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),

        ],
      ),
    );

  }
}


class Chip extends StatelessWidget {
  String icerik;


  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik ,style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}
