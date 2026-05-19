import 'package:citas_app/screens/detailScreen.dart';
import 'package:citas_app/services/API_service.dart';
import 'package:citas_app/settings/appColors.dart';
import 'package:flutter/material.dart';
import 'package:citas_app/models/cita.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Cita> _todas = [];
  List<Cita> _filtradas = [];
  final TextEditingController _controller = TextEditingController();
  late Future<List<Cita>> _future;

  @override
  void initState() {
    super.initState();
    _future = ApiService().getCitas();
  }

  void _filtrar(String texto) {
    setState(() {
      _filtradas = _todas
          .where((e) => e.author.toLowerCase().contains(texto.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cites de autor',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
        backgroundColor: Appcolors.backgroundThemeColor,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (snapshot.hasData) {
            if (_todas.isEmpty) {
              _todas = snapshot.data!;
              _filtradas = _todas;
            }
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controller,
                    onChanged: _filtrar,
                    decoration: InputDecoration(
                      hintText: 'Buscar autor...',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _filtradas.length,
                    itemBuilder: (context, index) {
                      final iterador = _filtradas[index];
                      return ListTile(
                        title: Text(iterador.author),
                        subtitle: Text(iterador.id.toString(),
                            overflow: TextOverflow.ellipsis),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      DetailScreen(item: iterador)));
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return const Text('Error al conectar.');
        },
      ),
    );
  }
}