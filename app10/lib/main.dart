import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

final txtNombre = TextEditingController();
final txtDescripcion = TextEditingController();
final txtTelefono = TextEditingController();
final txtUbicacion = TextEditingController();
final txtFotografia = TextEditingController();
final txtColor = TextEditingController();

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FICHA | 2925960", 
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FICHA | 2925960"), 
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
  itemCount: aprendices.length,
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(aprendices[index]["foto"]),
      ),
      title: Text(aprendices[index]["nombre"]),
      subtitle: Text(aprendices[index]["ubicacion"]),
      trailing: Icon(Icons.arrow_circle_right_sharp),
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom + 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(aprendices[index]["foto"]),
                    ),
                    SizedBox(height: 16),
                    Text(
                      aprendices[index]["nombre"],
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      aprendices[index]["descripcion"],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    Divider(height: 30),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Teléfono"),
                      subtitle: Text(aprendices[index]["telefono"]),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("Ubicación"),
                      subtitle: Text(aprendices[index]["ubicacion"]),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  },
),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 17, 255, 0),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                  title: Text("Nuevo Aprendiz"),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtNombre,
                        decoration: InputDecoration(
                          labelText: "Nombre",
                          hintText: "Nombre del aprendiz",
                          icon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        controller: txtDescripcion,
                        decoration: InputDecoration(
                          labelText: "Descripción",
                          hintText: "Descripción del aprendiz",
                          icon: Icon(Icons.description),
                        ),
                      ),
                      TextFormField(
                        controller: txtTelefono,
                        decoration: InputDecoration(
                          labelText: "Teléfono",
                          hintText: "Teléfono del aprendiz",
                          icon: Icon(Icons.phone),
                        ),
                      ),
                      TextFormField(
                        controller: txtUbicacion,
                        decoration: InputDecoration(
                          labelText: "Ubicación",
                          hintText: "Ubicación del aprendiz",
                          icon: Icon(Icons.location_on),
                        ),
                      ),
                      TextFormField(
                        controller: txtFotografia,
                        decoration: InputDecoration(
                          labelText: "Fotografía (URL)",
                          hintText: "URL de la foto del aprendiz",
                          icon: Icon(Icons.image),
                        ),
                      ),
                      TextFormField(
                        controller: txtColor,
                        decoration: InputDecoration(
                          labelText: "Color (en hexadecimal)",
                          hintText: "Color del avatar (ej. #FF5733)",
                          icon: Icon(Icons.color_lens),
                        ),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 2, 18, 251),
                  onPressed: () {
                    if (txtNombre.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("ERROR! El nombre está vacío"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            "Se ha guardado el aprendiz: ${txtNombre.text}",
                          ),
                        ),
                      );
                      setState(() {

                        aprendices.add({
                          'nombre': txtNombre.text,
                          'descripcion': txtDescripcion.text,
                          'telefono': txtTelefono.text,
                          'ubicacion': txtUbicacion.text,
                          'foto': txtFotografia.text,
                          'color': int.parse(txtColor.text.replaceAll('#', '0x')),
                        });
                      });
                      Navigator.pop(context); 
                    }
                  },
                  child: Icon(Icons.save),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

List<Map<String, dynamic>> aprendices = [
  {
    'nombre': 'nicol cordobar',
    'descripcion': 'Estudiante de desarrollo de aplicaciones móviles.',
    'telefono': '3001234567',
    'ubicacion': 'Bogotá, Colombia',
    'foto': 'https://randomuser.me/api/portraits/men/45.jpg',
    'color': 0xFF4CAF50,
  },
  {
    'nombre': 'Ana Gómez',
    'descripcion': 'Estudiante de diseño gráfico y desarrollo web.',
    'telefono': '3002345678',
    'ubicacion': 'Bogotá, Colombia',
    'foto': 'https://randomuser.me/api/portraits/women/65.jpg',
    'color': 0xFF2196F3,
  },
  {
    'nombre': 'Carlos López',
    'descripcion':
        'Desarrollador backend con experiencia en Node.js y MongoDB.',
    'telefono': '3003456789',
    'ubicacion': 'Cali, Colombia',
    'foto': 'https://randomuser.me/api/portraits/men/36.jpg',
    'color': 0xFFFF5722,
  },
  {
    'nombre': 'María Rodríguez',
    'descripcion':
        'Diseñadora UX/UI con pasión por la accesibilidad y la experiencia de usuario.',
    'telefono': '3004567890',
    'ubicacion': 'Barranquilla, Colombia',
    'foto': 'https://randomuser.me/api/portraits/women/12.jpg',
    'color': 0xFF009688,
  },
  {
    'nombre': 'Luis Sánchez',
    'descripcion': 'Desarrollador móvil con experiencia en Flutter y Kotlin.',
    'telefono': '3005678901',
    'ubicacion': 'Cartagena, Colombia',
    'foto': 'https://randomuser.me/api/portraits/men/59.jpg',
    'color': 0xFF673AB7,
  },
  {
    'nombre': 'Laura Martínez',
    'descripcion': 'Ingeniera de software con experiencia en Java y Python.',
    'telefono': '3006789012',
    'ubicacion': 'Bucaramanga, Colombia',
    'foto': 'https://randomuser.me/api/portraits/women/20.jpg',
    'color': 0xFF3F51B5,
  },
  {
    'nombre': 'Pedro Jiménez',
    'descripcion':
        'Estudiante de marketing digital y desarrollo de proyectos tecnológicos.',
    'telefono': '3007890123',
    'ubicacion': 'Pereira, Colombia',
    'foto': 'https://randomuser.me/api/portraits/men/76.jpg',
    'color': 0xFFFFC107,
  },
  {
    'nombre': 'Carolina Díaz',
    'descripcion': 'Programadora frontend con experiencia en React y Vue.js.',
    'telefono': '3008901234',
    'ubicacion': 'Santa Marta, Colombia',
    'foto': 'https://randomuser.me/api/portraits/women/45.jpg',
    'color': 0xFF00BCD4,
  },
  {
    'nombre': 'Andrés Ramírez',
    'descripcion':
        'Estudiante de ciencia de datos con enfoque en análisis de datos y Machine Learning.',
    'telefono': '3009012345',
    'ubicacion': 'Neiva, Colombia',
    'foto': 'https://randomuser.me/api/portraits/men/33.jpg',
    'color': 0xFFE91E63,
  },
  {
    'nombre': 'Elena Torres',
    'descripcion': 'Especialista en bases de datos y sistemas distribuidos.',
    'telefono': '3001237890',
    'ubicacion': 'Manizales, Colombia',
    'foto': 'https://randomuser.me/api/portraits/women/33.jpg',
    'color': 0xFF8BC34A,
  },
];
