import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar( title: const Text('Instagram'),backgroundColor: Colors.white,foregroundColor: Colors.black54,
     actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.messenger_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
     ),
     body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (var i = 0; i < 9; i++)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 30.0,
                        ),
                      ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 20,
              ),
               Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children:[
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 15.0,
                    ),
                    const SizedBox(width: 8),
                    const Text('ThayliGarcia'),
                    const Spacer(),
                    IconButton(
                      icon:  const Icon(Icons.more_vert, color: Colors.black),
                      onPressed: () {}
                        // Aquí puedes agregar la lógica que desees al hacer clic en los tres puntit },
                    ),
                  ]
                ),
              ),
              Column(
                children:[
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    color: Colors.grey,
                  ),
                  Row(
                    children:[
                      IconButton(
                        icon:  const Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {}
                        // Aquí puedes agregar la lógica que desees al hacer clic en los tres puntit },
                      ),
                      IconButton(
                        icon: const Icon(Icons.messenger_outlined, color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: Colors.black),
                        onPressed: () {},
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.bookmark_outline_rounded, color: Colors.black),
                        onPressed: () {},
                      )
                    ]
                  ),
                   const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text('Esta es una descripción de la imagen ',
                          style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                    )
                  ),
                ]
              ),
              const Divider(
                color: Colors.grey,
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children:[
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 15.0,
                    ),
                    const SizedBox(width: 8),
                    const Text('ThayliGarcia'),
                    const Spacer(),
                    IconButton(
                      icon:  const Icon(Icons.more_vert, color: Colors.black),
                      onPressed: () {}
                        // Aquí puedes agregar la lógica que desees al hacer clic en los tres puntit },
                    ),
                  ]
                ),
              ),
              Column(
                children:[
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    color: Colors.grey,
                  ),
                  Row(
                    children:[
                      IconButton(
                        icon:  const Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {}
                        // Aquí puedes agregar la lógica que desees al hacer clic en los tres puntit },
                      ),
                      IconButton(
                        icon: const Icon(Icons.messenger_outlined, color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: Colors.black),
                        onPressed: () {},
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.bookmark_outline_rounded, color: Colors.black),
                        onPressed: () {},
                      )
                    ]
                  ),
                   const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text('Esta es una descripción de la imagen ',
                          style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                    )
                  ),
                ]
              ),
              const Divider(
                color: Colors.grey,
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children:[
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 15.0,
                    ),
                    const SizedBox(width: 8),
                    const Text('ThayliGarcia'),
                    const Spacer(),
                    IconButton(
                      icon:  const Icon(Icons.more_vert, color: Colors.black),
                      onPressed: () {}
                        // Aquí puedes agregar la lógica que desees al hacer clic en los tres puntit },
                    ),
                  ]
                ),
              ),
              Column(
                children:[
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    color: Colors.grey,
                  ),
                  Row(
                    children:[
                      IconButton(
                        icon:  const Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {}
                        // Aquí puedes agregar la lógica que desees al hacer clic en los tres puntit },
                      ),
                      IconButton(
                        icon: const Icon(Icons.messenger_outlined, color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: Colors.black),
                        onPressed: () {},
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.bookmark_outline_rounded, color: Colors.black),
                        onPressed: () {},
                      )
                    ]
                  ),
                   const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text('Esta es una descripción de la imagen ',
                          style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                    )
                  ),
                ]
              ),
            ]
          ),
        )
        )
    );
  }
}