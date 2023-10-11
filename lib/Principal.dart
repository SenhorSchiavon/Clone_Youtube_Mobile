import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int indiceSelecionado = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Image.asset("imagens/youtube.png",scale: 4,),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),


          IconButton(onPressed: (){}, icon: Icon(Icons.search)),


          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle))
        ],


      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (indice){
          setState(() {
            indiceSelecionado = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: indiceSelecionado,
        //unselectedItemColor: Colors.yellow,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
                label: "Inicio",
                backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              label: "Em alta",
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions),
              label: "Inscrições",
          backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.folder_copy),
              label: "Biblioteca",
          backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
