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
      title: "SENA | CEET",
      home: HomePrinicipal(),
    );
  }
}

class HomePrinicipal extends StatefulWidget {
  const HomePrinicipal({super.key});

  @override
  State<HomePrinicipal> createState() => _HomePrinicipalState();
}

class _HomePrinicipalState extends State<HomePrinicipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Text("SENA | CEET"),
      ),
      body: ListView.builder(
        itemCount: sitiosTuristicos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.flag),
            title: Text(sitiosTuristicos[index]['nombre']),
            subtitle: Text(sitiosTuristicos[index]['ubicacion']),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> sitiosTuristicos = [
  {
    'nombre': '1. AMAYA MARTINEZ, FABIAN YESID',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '2. BELTRAN BUSTOS, JULIAN DANIEL',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '3. BORDA ARDILA, RONNY',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '4. CADENA QUINTERO, ALAN JAIR',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '5. CAMACHO FERRUCHO, CARLOS EDUARDO',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '6. CASTAÑEDA LEIVA, BRAYAN DAVID',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '7. CORDOBA MALDONADO, NICOL DAYANA',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '8. CRUZ FIGUEROA, OSCAR MAURICIO',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '9. CUIDA ESQUIVEL, SAMUEL',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '10. DAZA CAMACHO, JOSE DAVID',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '11. ESPITIA ARENAS, MAICOL STIVEN',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '12. HERRERA MATEUS, BRAYAN STIVEN',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '13. LONDOÑO CARVAJAL, JUAN ESTEBAN',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '14. LOZANO PANESSO, EDWARD CAMILO',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '15. MADRIGAL TIQUE, JOHAN SNEIDER',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '16. MELO CANO, CRISTIAN CAMILO',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '17. MENESES PARRA, DAVID LEONARDO',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '18. MIRANDA MORENO, JOHAN DANIEL',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '19. MONTEALEGRE SANCHEZ, KEVIN SANTIAGO',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '20. MONZON AMORTEGUI, CRISTIAN DAVID',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '21. MORALEZ PACHON, DAVID SANTIAGO',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '22. TUNJANO CORREA, MIGUEL ANGEL',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '23. VALBUENA MANECAS, DIEGO ALEJANDRO',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '24. VASQUEZ PRADA, JOHN MICHAEL',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '25. VILLAZON MONTERO, MARIA ALEJANDRA',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
  {
    'nombre': '26. ZABALETA CALDERON, JOSE DAVID',
    'pais': 'SENA',
    'descripcion': 'Aprendiz del CEET',
    'ubicacion': 'Centro de Electricidad, Electrónica y Telecomunicaciones',
    'fecha_lanzamiento': '2025',
    'generacion': 'Formación',
  },
];
