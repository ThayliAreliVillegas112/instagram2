import 'package:flutter/material.dart';
import 'package:instagramthayli/kernel/theme/colors_app.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('thayligarcia26'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black54,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.messenger_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 35.0,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Thayli garcia',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('36'),
                              Text('Publicaciones'),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text('182'),
                              Text('Seguidores'),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text('350'),
                              Text('Seguidos'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Acción para "Editar perfil"
                    },
                    child: Text('Editar perfil'),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Acción para "Compartir perfil"
                    },
                    child: Text('Compartir perfil'),
                  ),
                  InkWell(
                    onTap: () {
                      // Acción para el botón de compartir perfil
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: ColorsApp.botones, // Puedes cambiar el color según tus necesidades
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.share, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Column(
                children: [
                  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25.0,
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25.0,
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25.0,
                      ),
                    ]
                  ),
                ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                        IconButton(
                        icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                          onPressed: () {},
                        ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
