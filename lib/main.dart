import 'package:flutter/material.dart';


void main() {
 runApp(const MyApp());
}


class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);
 @override
 MyAppState createState() {
   return MyAppState();
 }
}


class MyAppState extends State<MyApp> {
  
  String pilihanMobil = "Brio";
  String pilihanMobilOut = "";
  String pilihanGambar = "https://upload.wikimedia.org/wikipedia/commons/2/2e/2020_Honda_Brio_Satya_S_1.2_DD1_%2820211001%29_01.jpg";
  String pilihanGambarOut = "";
  String selectedOption = "";

  final Map<String, String> _items = {
    'Brio' : 'https://upload.wikimedia.org/wikipedia/commons/2/2e/2020_Honda_Brio_Satya_S_1.2_DD1_%2820211001%29_01.jpg',
    'Civic' : 'https://upload.wikimedia.org/wikipedia/commons/8/84/2018_Honda_Civic_1.5_E_hatchback_%28FK4%3B_01-23-2019%29%2C_South_Tangerang.jpg',
    'Jazz' : 'https://asset.honda-indonesia.com/2020/04/27/exterior_2l_1__1588046929826.jpg'
  };

 @override
 Widget build(BuildContext context) {
  List<DropdownMenuItem<String>> mobil = [];
    var itm1 = const DropdownMenuItem<String>(
      value: "Brio",
      child: Text("Brio"),
    );
    var itm2 = const DropdownMenuItem<String>(
      value: "Civic",
      child: Text("Civic"),
    );
    var itm3 = const DropdownMenuItem<String>(
      value: "Jazz",
      child: Text("Jazz"),
    );
    mobil.add(itm1);
    mobil.add(itm2);
    mobil.add(itm3);

  List<DropdownMenuItem<String>> gambar = [];
    var itmg1 = const DropdownMenuItem<String>(
      value: "https://upload.wikimedia.org/wikipedia/commons/2/2e/2020_Honda_Brio_Satya_S_1.2_DD1_%2820211001%29_01.jpg",
      child: Text("Brio"),
    );
    var itmg2 = const DropdownMenuItem<String>(
      value: "https://upload.wikimedia.org/wikipedia/commons/8/84/2018_Honda_Civic_1.5_E_hatchback_%28FK4%3B_01-23-2019%29%2C_South_Tangerang.jpg",
      child: Text("Civic"),
    );
    var itmg3 = const DropdownMenuItem<String>(
      value: "https://asset.honda-indonesia.com/2020/04/27/exterior_2l_1__1588046929826.jpg",
      child: Text("Jazz"),
    );
    gambar.add(itmg1);
    gambar.add(itmg2);
    gambar.add(itmg3);

  List<Map<String, dynamic>> options = [
    {'value': "https://upload.wikimedia.org/wikipedia/commons/2/2e/2020_Honda_Brio_Satya_S_1.2_DD1_%2820211001%29_01.jpg", 'label' : "Brio"},
    {'value': "https://upload.wikimedia.org/wikipedia/commons/8/84/2018_Honda_Civic_1.5_E_hatchback_%28FK4%3B_01-23-2019%29%2C_South_Tangerang.jpg", 'label' : "Civic"},
    {'value': "https://asset.honda-indonesia.com/2020/04/27/exterior_2l_1__1588046929826.jpg", 'label' : "Jazz"},
  ];
   return MaterialApp(
     title: 'Hello App',
     home: Scaffold(
       appBar: AppBar(
           leading: FlutterLogo(),
           backgroundColor: Colors.blueGrey,
           title: Text('Quiz Flutter'),
           actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
       body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(40),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          decoration: BoxDecoration(),
                          padding: EdgeInsets.all(10),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                            Container(
                              decoration: BoxDecoration(),
                              padding: EdgeInsets.all(15),
                              child: Text('Mobil Saya', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/2/2e/2020_Honda_Brio_Satya_S_1.2_DD1_%2820211001%29_01.jpg"),
                                  fit: BoxFit.cover
                                )),
                              padding: EdgeInsets.all(70)),
                            Container(
                              decoration: BoxDecoration(),
                              padding: EdgeInsets.all(15),
                              child: ElevatedButton(onPressed: (){}, child: Text('Detail'), style: ElevatedButton.styleFrom(primary: Colors.grey),),
                            ),
                          ])),
                      Container(
                          decoration: BoxDecoration(border: Border.all()),
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DropdownButton(
                                value: pilihanMobil,
                                items: mobil,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    if(newValue != null) {
                                      pilihanMobil = newValue;
                                    }
                                  });
                                },

                                // value: selectedOption,
                                // items: options.map((option) {
                                //   return DropdownMenuItem(
                                //     value: option['value'],
                                //     child: Text(option['label']),
                                //     );
                                // }).toList(),
                                // onChanged: (Object? newValue) {
                                //   setState(() {
                                //     if(newValue != null) selectedOption = newValue.toString();
                                //   });
                                // },
                              ),
                              Text('$pilihanMobil', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                              Container(
                                padding: EdgeInsets.all(10),
                                child:
                                  Text('Nomor Rangka: XXXXX \n Nomor Mesin: XXXXX \n Garansi Berlaku: DD-MM-YYYY')
                              )
                            ]
                          
                          ),)
                    ])),
            Container(
                decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: 
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text('Katalog Produk', textAlign: TextAlign.left),
                          ),
                          Container(
                            child: Text('Lihat Semua', textAlign: TextAlign.right, style: TextStyle(color: Colors.red),),
                          )
                        ])
                      ),                      
                      Container(
                        padding: EdgeInsets.all(10),
                        child: 
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/2/2e/2020_Honda_Brio_Satya_S_1.2_DD1_%2820211001%29_01.jpg"),
                                    fit: BoxFit.cover
                                  )),
                                padding: EdgeInsets.all(50),),
                              Text('Brio'),
                            ] 
                            )
                          ),
                          Container(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/84/2018_Honda_Civic_1.5_E_hatchback_%28FK4%3B_01-23-2019%29%2C_South_Tangerang.jpg"),
                                    fit: BoxFit.cover
                                  )),
                                padding: EdgeInsets.all(50),),
                              Text('Civic'),
                            ] 
                            )
                          ),
                          Container(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://asset.honda-indonesia.com/2020/04/27/exterior_2l_1__1588046929826.jpg"),
                                    fit: BoxFit.cover
                                  )),
                                padding: EdgeInsets.all(50),),
                              Text('Jazz'),
                            ] 
                            )
                          ),
                        ],
                          ),
                      )
                    ]
                )
            ),
          ]),
       ),
     ),
   );
 }
}


class ButtonNamaKelompok extends StatelessWidget {
 const ButtonNamaKelompok({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return IconButton(
     icon: Icon(Icons.account_circle_rounded),
     onPressed: () {
       // icon account di tap
       showDialog<String>(
         context: context,
         builder: (BuildContext context) => AlertDialog(
           title: const Text('Nama Kelompok'),
           content: const Text('Rahma Maulida - 2003688 (rahma.m15@upi.edu) ; Hilman Ahmad - 2007235 (hilman.ahmad1219@upi.edu)'),
           actions: <Widget>[
             TextButton(
               onPressed: () => Navigator.pop(context, 'OK'),
               child: const Text('OK'),
             ),
           ],
         ),
       );
     },
   );
 }
}


class ButtonPerjanjian extends StatelessWidget {
 const ButtonPerjanjian({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return IconButton(
     icon: Icon(Icons.access_alarm_rounded),
     onPressed: () {
       // icon setting ditap
       const snackBar = SnackBar(
         duration: Duration(seconds: 20),
         content: Text('Kami berjanji tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
       );
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
     },
   );
 }
}
