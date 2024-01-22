import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Text(""),
    );
  }
}
class _MyHomePageState extends StatefulWidget {
  const _MyHomePageState({super.key});

  @override
  State<_MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<_MyHomePageState> {
  @override
  Widget build(BuildContext context) {
    
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYukseligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;
    
    return  Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Padding(
               padding: EdgeInsets.only(bottom: ekranYukseligi/20),
               child: SizedBox(
                 width: ekranGenisligi/4,
                   height: ekranYukseligi/6,
                   child: Image.asset("resimler/login.jpg"),

               ),
             ),
              Padding(
                padding: EdgeInsets.all(ekranYukseligi/30),
                child: TextField(
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranYukseligi/30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYukseligi/30),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYukseligi/12.1,
                  child: ElevatedButton(
                    child: Text(
                      "GİRİŞ YAP",
                      style: TextStyle(
                        fontSize: ekranGenisligi/25.1,
                      ),
                    ),
                    onPressed: (){
                      print("Giriş yapıldı");
                    },
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Yardım Seçildi");
                },
                child: Text(
                    "Yardım ?",
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi/30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
