
// Ensure the ConsultarAlbum method is correctly imported or defined in the imported file.
import 'package:app11/api/ConsultarFotos.dart';
import 'package:app11/api/ConsultarNoticias.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ficha | 2925960",
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
        title: const Text("CONSULTAS - APIS"),
        backgroundColor: const Color.fromARGB(255, 218, 176, 100),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("Noticias"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  ConsultarNoticias().then((resp) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Noticias"),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color.fromARGB(
                              255,
                              225,
                              0,
                              255,
                            ),
                          ),
                          body: ListView.builder(
                            itemCount: resp.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  title: Text(resp[index].title),
                                  subtitle: Text(resp[index].body),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.comment),
                title: Text("Comentarios"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.album),
                title: Text("Albums"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  ConsultarAlbum().then((resp) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Album"),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color.fromARGB(
                              255,
                              30,
                              0,
                              255,
                            ),
                          ),
                          body: ListView.builder(
                            itemCount: resp.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(title: Text(resp[index].title)),
                              );
                            },
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.photo),
                title: Text("Fotos"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  ConsultarFotos().then((resp) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Fotos"),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color.fromARGB(
                              255,
                              255,
                              170,
                              0,
                            ),
                          ),
                          body: ListView.builder(
                            itemCount: resp.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      resp[index].thumbnailUrl,
                                    ),
                                  ),
                                  title: Text(resp[index].title),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConsultarAlbum {
  void then(Null Function(dynamic resp) param0) {}
}

