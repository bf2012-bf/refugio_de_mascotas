import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Refugio de Animales"),
          backgroundColor: const Color.fromARGB(255, 128, 248, 250),
          foregroundColor: const Color.fromARGB(255, 238, 131, 217),
        ),
        body: ListaMascotas(),
      ),
    );
  }
}

class ListaMascotas extends StatefulWidget {
  const ListaMascotas({super.key});

  @override
  State<ListaMascotas> createState() => _ListaMascotasState();
}

class _ListaMascotasState extends State<ListaMascotas> {
  bool corazon = false;
  bool corazon1 = false;
  bool corazon2 = false;
  bool corazon3 = false;
  bool corazon4 = false;
  bool corazon5 = false;
  bool corazon6 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/castor.jpeg"),
                  radius: 65,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/gato.jpeg"),
                  radius: 65,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/gato2.jpeg"),
                  radius: 65,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/gato3.jpeg"),
                  radius: 65,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/pato.jpeg"),
                  radius: 65,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/perro.jpeg"),
                  radius: 65,
                ),
              ],
            ),
          ),
        ),
        Divider(),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              ListTile(
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      corazon = !corazon;
                    });
                  },
                  icon: corazon
                  ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                  : Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 185, 194, 211),
                  ),
                ),
                leading: Image(
                  image: AssetImage("images/castor.jpeg"),
                ),
                title: Text("Muelitas"),
                subtitle: Text("Mestizo - Mediano"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mascota(),),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      corazon1 = !corazon1;
                    });
                  },
                  icon: corazon1
                  ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                  : Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 185, 194, 211),
                  ),
                ),
                leading: Image(
                  image: AssetImage("images/gato.jpeg"),
                ),
                title: Text("Leonidas"),
                subtitle: Text("Esfinge - Grande"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mascota(),),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      corazon2 = !corazon2;
                    });
                  },
                  icon: corazon2
                  ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                  : Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 185, 194, 211),
                  ),
                ),
                leading: Image(
                  image: AssetImage("images/gato2.jpeg"),
                ),
                title: Text("Misifú"),
                subtitle: Text("Ragdoll - Mediano"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mascota(),),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      corazon3 = !corazon3;
                    });
                  },
                  icon: corazon3
                  ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                  : Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 185, 194, 211),
                  ),
                ),
                leading: Image(
                  image: AssetImage("images/pato.jpeg"),
                ),
                title: Text("Patricio"),
                subtitle: Text("Mestizo - Pequeño"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mascota(),),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      corazon4 = !corazon4;
                    });
                  },
                  icon: corazon4
                  ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                  : Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 185, 194, 211),
                  ),
                ),
                leading: Image(
                  image: AssetImage("images/perro.jpeg"),
                ),
                title: Text("Donatello"),
                subtitle: Text("Pitbull - Grande"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mascota(),),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      corazon5 = !corazon5;
                    });
                  },
                  icon: corazon5
                  ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                  : Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 185, 194, 211),
                  ),
                ),
                leading: Image(
                  image: AssetImage("images/castor.jpeg"),
                ),
                title: Text("Newton"),
                subtitle: Text("Mestizo - Pequeño"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mascota(),),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Mascota extends StatelessWidget {
  const Mascota({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Return"),
      ),
    );
  }
}
