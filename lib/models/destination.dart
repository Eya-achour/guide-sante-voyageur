import 'risque.dart';
import 'vaccin.dart';

class Destination {
  final String id;
  final String nom;
  final String pays;
  final String continent;
  final String image; // chemin dans assets/images/
  final String description;
  final List<Vaccin> vaccins;
  final List<RisqueSanitaire> risques;
  final List<String> conseils;
  final Map<String, String> urgences; // ex: {'Ambulance': '15'}
  final String lienOfficiel;
  bool estFavori;

  Destination({
    required this.id,
    required this.nom,
    required this.pays,
    required this.continent,
    required this.image,
    required this.description,
    required this.vaccins,
    required this.risques,
    required this.conseils,
    required this.urgences,
    required this.lienOfficiel,
    this.estFavori = false,
  });
}
