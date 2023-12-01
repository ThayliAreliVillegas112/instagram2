import 'package:flutter/material.dart';
import 'package:instagramthayli/kernel/theme/colors_app.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool showGrid = true;
  bool showText = false;
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
            icon: const Icon(Icons.list, color: Colors.black),
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
                  Column(
                    children:[
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 35.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Thayli Garcia',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                  ),
                  
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
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
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/profile/edit');
                    },
                    child: const Text('Editar perfil'),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Acción para "Compartir perfil"
                    },
                    child:const Text('Compartir perfil'),
                  ),
                  const Spacer(),
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
                      child: const Icon(Icons.share, color: Colors.white),
                    ),
                  ),
                  const Spacer()
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
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                          const SizedBox(width: 10),
                          IconButton(
                            icon: const Icon(Icons.apps_outlined, color: Colors.black),
                            onPressed: () {
                              setState((){
                                showGrid=true;
                                showText=false;
                              });
                            },
                          ),
                           const SizedBox(width: 150),
                          IconButton(
                              icon: const Icon(Icons.assignment_ind_outlined, color: Colors.black),
                              onPressed: () {
                                setState((){
                                  showGrid=false;
                                  showText=true;
                                });
                              },
                          ),
                           const SizedBox(width: 40),
                      ],
                    ),
                  )
                ],
              ),
              if (showGrid)
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          'Elemento $index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
                if (showText)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('FOTOS Y VIDEOS EN'),
                      Text('LOS QUE APARECES'),
                    ],
                  ),
                ),
            ],
          ),
          
        ),
      ),
    );
  }
}


