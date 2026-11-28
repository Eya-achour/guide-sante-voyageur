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
    Destination(
    id: 'arabie_saoudite',
    nom: 'Arabie saoudite',
    pays: 'Arabie saoudite',
    continent: 'Asie',
    image: 'assets/images/arabie_saoudite.jpg',
    description:
        'Pays du Moyen-Orient, destination du pèlerinage vers La Mecque et Médine.',
    vaccins: const [
      Vaccin(
        nom: 'Méningite ACYW',
        obligatoire: true,
        description:
            'Exigée pour l\'Omra et le Hajj, au moins 10 jours avant l\'arrivée. Certificat international de vaccination à présenter.',
      ),
      Vaccin(
        nom: 'Vaccins de routine à jour',
        obligatoire: false,
        description: 'Vérifiez vos vaccins du calendrier habituel avant le départ.',
      ),
      Vaccin(
        nom: 'Hépatite A',
        obligatoire: false,
        description: 'Recommandée pour la plupart des voyageurs.',
      ),
      Vaccin(
        nom: 'Fièvre jaune',
        obligatoire: false,
        description:
            'Certificat exigé seulement si vous venez d\'un pays à risque de transmission.',
      ),
      Vaccin(
        nom: 'Grippe saisonnière',
        obligatoire: false,
        description: 'Conseillée aux pèlerins par les autorités saoudiennes.',
      ),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'Méningite à méningocoques',
        niveau: NiveauRisque.moyen,
        prevention: 'Vaccination ACYW avant le départ.',
      ),
    ],
    conseils: const [
      'Faites le vaccin contre la méningite au moins 10 jours avant l\'arrivée.',
      'Gardez le certificat international de vaccination avec vous.',
      'Vérifiez les exigences sanitaires publiées chaque année par les autorités saoudiennes.',
    ],
    urgences: const {
      'Urgence médicale': '997',
      'Pompiers': '998',
      'Police': '999',
      'Police de la circulation': '993',
    },
    lienOfficiel:
        'https://www.pasteur.fr/fr/centre-medical/preparer-son-voyage/arabie-saoudite',
  ),
];
