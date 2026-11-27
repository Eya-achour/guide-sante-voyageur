import 'package:flutter/material.dart';

import '../models/destination.dart';
import '../widgets/risk_chip.dart';

class DetailScreen extends StatelessWidget {
  final Destination destination;

  const DetailScreen({super.key, required this.destination});

  Widget _titre(String texte) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        texte,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(destination.nom)),
      body: ListView(
        children: [
          SizedBox(
            height: 220,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(destination.image, fit: BoxFit.cover),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black87],
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 16,
                  child: Text(
                    '${destination.nom} · ${destination.continent}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(destination.description),
                _titre('Vaccins'),
                ...destination.vaccins.map(
                  (v) => Card(
                    child: ListTile(
                      leading: const Icon(Icons.vaccines),
                      title: Text(v.nom),
                      subtitle: Text(v.description),
                      trailing: v.obligatoire
                          ? const Chip(label: Text('Obligatoire'))
                          : null,
                    ),
                  ),
                ),
                _titre('Risques sanitaires'),
                ...destination.risques.map((r) => RiskChip(risque: r)),
                _titre('Conseils'),
                ...destination.conseils.map(
                  (c) => Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.check_circle_outline, size: 20),
                        const SizedBox(width: 8),
                        Expanded(child: Text(c)),
                      ],
                    ),
                  ),
                ),
                _titre('Numéros d\'urgence'),
                ...destination.urgences.entries.map(
                  (e) => ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.phone),
                    title: Text(e.key),
                    trailing: Text(
                      e.value,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Information indicative : consultez un médecin ou un centre de vaccination avant de voyager.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
