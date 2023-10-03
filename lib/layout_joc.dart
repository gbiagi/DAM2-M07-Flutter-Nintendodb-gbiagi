import 'package:flutter/material.dart';

class layout_joc extends StatelessWidget {
  final dynamic itemData;

// Constructor
  layout_joc({Key? key, required this.itemData}) : super(key: key);

// ... aquí la funció ‘build’ definida a la següent diapositiva
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ocupar la meitat superior de l'espai amb la imatge
          SizedBox(
            width: MediaQuery.of(context).size.width * 100.0,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              'assets/images/${itemData["imatge"]}',
              fit: BoxFit.contain,
            ),
          ),
          // Ocupar la meitat inferior de l'espai amb els textos
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${itemData['data']}".substring(0, 4),
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Text(
                  "${itemData['tipus']}",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5), // salto entre textos
                Text(
                  "${itemData['descripcio']}",
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
