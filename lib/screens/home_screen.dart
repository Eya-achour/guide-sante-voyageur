import 'package:flutter/material.dart';

import '../data/destinations_data.dart';
import '../models/destination.dart';
import '../widgets/destination_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _recherche = '';

  List<Destination> get _resultats {
    final q = _recherche.toLowerCase();
    return destinationsData
        .where(
          (d) =>
              d.nom.toLowerCase().contains(q) ||
              d.continent.toLowerCase().contains(q),
        )
        .toList();
  }

  void _basculerFavori(Destination d) {
    setState(() => d.estFavori = !d.estFavori);
  }

  void _ouvrirDetail(Destination d) {
    // L'écran de détail sera ajouté à l'étape suivante.
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Détail de ${d.nom} : à venir')));
  }

  void _afficherMenu(Destination d) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Voir le détail'),
              onTap: () {
                Navigator.pop(ctx);
                _ouvrirDetail(d);
              },
            ),
            ListTile(
              leading: Icon(
                d.estFavori ? Icons.favorite : Icons.favorite_border,
              ),
              title: Text(
                d.estFavori ? 'Retirer des favoris' : 'Ajouter aux favoris',
              ),
              onTap: () {
                Navigator.pop(ctx);
                _basculerFavori(d);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final resultats = _resultats;

    return Scaffold(
      appBar: AppBar(title: const Text('Guide santé du voyageur')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (valeur) => setState(() => _recherche = valeur),
              decoration: const InputDecoration(
                hintText: 'Rechercher une destination',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: resultats.isEmpty
                ? const Center(child: Text('Aucune destination trouvée'))
                : GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.85,
                        ),
                    itemCount: resultats.length,
                    itemBuilder: (context, index) {
                      final d = resultats[index];
                      return DestinationCard(
                        destination: d,
                        onTap: () => _ouvrirDetail(d),
                        onDoubleTap: () => _basculerFavori(d),
                        onLongPress: () => _afficherMenu(d),
                      );
                    },
                  ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Information indicative : consultez un médecin avant de voyager.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
