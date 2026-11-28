import '../models/destination.dart';
import '../models/risque.dart';
import '../models/vaccin.dart';

final List<Destination> destinationsDataB = [
  Destination(
    id: 'senegal',
    nom: 'Sénégal',
    pays: 'Sénégal',
    continent: 'Afrique',
    image: 'assets/images/senegal.jpg',
    description: 'À COMPLÉTER',
    vaccins: const [
      Vaccin(
        nom: 'À COMPLÉTER',
        obligatoire: false,
        description: 'À COMPLÉTER',
      ),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'À COMPLÉTER',
        niveau: NiveauRisque.moyen,
        prevention: 'À COMPLÉTER',
      ),
    ],
    conseils: const [
      'À COMPLÉTER',
    ],
    urgences: const {
      'À COMPLÉTER': 'À COMPLÉTER',
    },
    lienOfficiel: 'À COMPLÉTER',
  ),
];