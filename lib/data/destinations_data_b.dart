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
    Destination(
    id: 'turquie',
    nom: 'Turquie',
    pays: 'Turquie',
    continent: 'Asie',
    image: 'assets/images/turquie.jpg',
    description:
        'Pays entre Europe et Asie, avec Istanbul, la Cappadoce et les côtes méditerranéennes.',
    vaccins: const [
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
        nom: 'Hépatite B',
        obligatoire: false,
        description: 'Pour les séjours longs ou répétés.',
      ),
      Vaccin(
        nom: 'Typhoïde',
        obligatoire: false,
        description:
            'Pour un séjour prolongé ou dans des conditions d\'hygiène précaires.',
      ),
      Vaccin(
        nom: 'Rage',
        obligatoire: false,
        description: 'Pour un séjour prolongé en situation d\'isolement.',
      ),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'Eau et aliments (diarrhée du voyageur)',
        niveau: NiveauRisque.moyen,
        prevention: 'Eau en bouteille, aliments bien cuits, lavage des mains.',
      ),
      RisqueSanitaire(
        nom: 'Tiques (zones rurales et boisées)',
        niveau: NiveauRisque.moyen,
        prevention:
            'Vêtements couvrants, répulsif, vérification de la peau après une sortie en nature.',
      ),
    ],
    conseils: const [
      'Consultez un médecin ou un centre de vaccination avant le départ.',
      'Il n\'y a pas de transmission du paludisme : aucun traitement préventif n\'est nécessaire.',
      'Protégez-vous des tiques lors des sorties en zone rurale ou boisée.',
      'Évitez les contacts avec les animaux errants.',
    ],
    urgences: const {
      'Urgences (ambulance)': '112',
      'Police': '155',
      'Gendarmerie': '156',
      'Pompiers': '110',
      'Centre pour étrangers': '157',
    },
    lienOfficiel:
        'https://www.pasteur.fr/fr/centre-medical/preparer-son-voyage/turquie',
  ),
    Destination(
    id: 'egypte',
    nom: 'Égypte',
    pays: 'Égypte',
    continent: 'Afrique',
    image: 'assets/images/egypte.jpg',
    description:
        'Pays de la vallée du Nil, des pyramides de Gizeh, de Louxor et de la mer Rouge.',
    vaccins: const [
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
        nom: 'Hépatite B',
        obligatoire: false,
        description: 'Pour les séjours longs ou répétés.',
      ),
      Vaccin(
        nom: 'Typhoïde',
        obligatoire: false,
        description:
            'Pour un séjour prolongé ou dans des conditions d\'hygiène précaires.',
      ),
      Vaccin(
        nom: 'Rage',
        obligatoire: false,
        description: 'Pour un séjour prolongé en situation d\'isolement.',
      ),
      Vaccin(
        nom: 'Fièvre jaune',
        obligatoire: false,
        description:
            'Certificat exigé seulement si vous venez d\'un pays à risque, y compris après un transit de plus de 12 heures.',
      ),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'Eau et aliments (diarrhée du voyageur)',
        niveau: NiveauRisque.moyen,
        prevention:
            'Eau en bouteille capsulée, aliments bien cuits, lavage des mains.',
      ),
      RisqueSanitaire(
        nom: 'Baignade en eau douce (schistosomiase)',
        niveau: NiveauRisque.moyen,
        prevention: 'Évitez de vous baigner dans le Nil et les eaux douces stagnantes.',
      ),
      RisqueSanitaire(
        nom: 'Dengue',
        niveau: NiveauRisque.faible,
        prevention: 'Répulsif et vêtements couvrants.',
      ),
    ],
    conseils: const [
      'Consultez un médecin ou un centre de vaccination avant le départ.',
      'Vérifiez que vos médicaments personnels sont autorisés et gardez votre ordonnance.',
      'Évitez de vous baigner dans le Nil et dans les eaux douces stagnantes.',
      'Évitez le lait cru et les fromages au lait cru.',
    ],
    urgences: const {
      'Police': '122',
      'Ambulance': '123',
      'Pompiers': '180',
      'Police touristique': '126',
    },
    lienOfficiel:
        'https://www.pasteur.fr/fr/centre-medical/preparer-son-voyage/egypte',
  ),
];
