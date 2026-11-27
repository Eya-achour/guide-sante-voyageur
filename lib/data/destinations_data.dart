import '../models/destination.dart';
import '../models/risque.dart';
import '../models/vaccin.dart';

final List<Destination> destinationsData = [
  Destination(
    id: 'thailande',
    nom: 'Thaïlande',
    pays: 'Thaïlande',
    continent: 'Asie',
    image: 'assets/images/thailande.jpg',
    description: 'Destination tropicale très fréquentée, entre plages, temples et villes animées.',
    vaccins: const [
      Vaccin(
        nom: 'Hépatite A',
        obligatoire: false,
        description:
            'Recommandé : transmission par eau et aliments contaminés.',
      ),
      Vaccin(
        nom: 'Typhoïde',
        obligatoire: false,
        description:
            'Recommandé surtout pour les séjours hors circuits touristiques.',
      ),
      Vaccin(
        nom: 'Rage',
        obligatoire: false,
        description: 'À envisager en cas de contact probable avec des animaux.',
      ),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'Dengue',
        niveau: NiveauRisque.eleve,
        prevention: 'Répulsif anti-moustiques, vêtements longs, moustiquaire.',
      ),
      RisqueSanitaire(
        nom: 'Diarrhée du voyageur',
        niveau: NiveauRisque.moyen,
        prevention: 'Eau en bouteille, aliments bien cuits, lavage des mains.',
      ),
    ],
    conseils: const [
      'Buvez uniquement de l\'eau en bouteille capsulée.',
      'Protégez-vous du soleil et hydratez-vous régulièrement.',
      'Souscrivez une assurance avec rapatriement sanitaire.',
    ],
    urgences: const {
      'Police touristique': '1155',
      'Ambulance': '1669',
      'Police': '191',
    },
    lienOfficiel: 'https://www.who.int/travel-advice',
  ),
  Destination(
    id: 'maroc',
    nom: 'Maroc',
    pays: 'Maroc',
    continent: 'Afrique',
    image: 'assets/images/maroc.jpg',
    description:
        'Destination proche, entre villes impériales, montagnes et désert.',
    vaccins: const [
      Vaccin(
        nom: 'Hépatite A',
        obligatoire: false,
        description: 'Recommandé pour la plupart des voyageurs.',
      ),
      Vaccin(
        nom: 'Typhoïde',
        obligatoire: false,
        description: 'Recommandé en cas de séjour prolongé ou hors circuits.',
      ),
      Vaccin(
        nom: 'Rage',
        obligatoire: false,
        description: 'À envisager en cas de contact avec des animaux errants.',
      ),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'Diarrhée du voyageur',
        niveau: NiveauRisque.moyen,
        prevention: 'Eau en bouteille, éviter les crudités mal lavées.',
      ),
      RisqueSanitaire(
        nom: 'Coup de chaleur',
        niveau: NiveauRisque.moyen,
        prevention:
            'Chapeau, crème solaire, eau en quantité, éviter la mi-journée.',
      ),
    ],
    conseils: const [
      'Évitez les glaçons et les jus préparés avec de l\'eau du robinet.',
      'Évitez de caresser les chiens et chats errants.',
      'Prévoyez une protection solaire élevée, surtout dans le sud.',
    ],
    urgences: const {
      'Police': '19',
      'Gendarmerie': '177',
      'Ambulance / Protection civile': '15',
    },
    lienOfficiel: 'https://www.who.int/travel-advice',
  ),
  Destination(
    id: 'bresil',
    nom: 'Brésil',
    pays: 'Brésil',
    continent: 'Amérique du Sud',
    image: 'assets/images/bresil.jpg',
    description:
        'Pays immense aux climats variés, de la côte à la forêt amazonienne.',
    vaccins: const [
      Vaccin(
        nom: 'Fièvre jaune',
        obligatoire: false,
        description: 'Recommandée pour de nombreuses régions. Vérifiez la zone visitée avant le départ.',
      ),
      Vaccin(
        nom: 'Hépatite A',
        obligatoire: false,
        description: 'Recommandé pour la plupart des voyageurs.',
      ),
      Vaccin(
        nom: 'Typhoïde',
        obligatoire: false,
        description: 'Recommandé selon la durée et les conditions du séjour.',
      ),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'Dengue, Zika, chikungunya',
        niveau: NiveauRisque.eleve,
        prevention: 'Répulsif, vêtements couvrants, moustiquaire.',
      ),
      RisqueSanitaire(
        nom: 'Paludisme (zones amazoniennes)',
        niveau: NiveauRisque.moyen,
        prevention:
            'Avis médical avant le départ pour un traitement préventif.',
      ),
    ],
    conseils: const [
      'Consultez un centre de vaccination plusieurs semaines avant le départ.',
      'Les femmes enceintes doivent demander un avis médical spécifique.',
      'Utilisez un répulsif adapté, même en ville.',
    ],
    urgences: const {
      'Ambulance (SAMU)': '192',
      'Police': '190',
      'Pompiers': '193',
    },
    lienOfficiel: 'https://www.who.int/travel-advice',
  ),
  Destination(
    id: 'kenya',
    nom: 'Kenya',
    pays: 'Kenya',
    continent: 'Afrique',
    image: 'assets/images/kenya.jpg',
    description: 'Safaris, savanes et côte de l\'océan Indien.',
    vaccins: const [
      Vaccin(
        nom: 'Fièvre jaune',
        obligatoire: false,
        description: 'Recommandée. Un certificat peut être exigé selon le pays de provenance.',
      ),
      Vaccin(nom: 'Hépatite A', obligatoire: false, description: 'Recommandé.'),
      Vaccin(nom: 'Typhoïde', obligatoire: false, description: 'Recommandé.'),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'Paludisme',
        niveau: NiveauRisque.eleve,
        prevention: 'Traitement préventif sur avis médical, répulsif, moustiquaire imprégnée.',
      ),
      RisqueSanitaire(
        nom: 'Diarrhée du voyageur',
        niveau: NiveauRisque.moyen,
        prevention: 'Eau en bouteille, aliments bien cuits.',
      ),
    ],
    conseils: const [
      'Consultez un médecin ou un centre de vaccination avant le départ.',
      'Dormez sous moustiquaire, surtout en zone de safari.',
      'Emportez une trousse de premiers secours complète.',
    ],
    urgences: const {'Urgences générales': '999', 'Numéro unique': '112'},
    lienOfficiel: 'https://www.who.int/travel-advice',
  ),
  Destination(
    id: 'japon',
    nom: 'Japon',
    pays: 'Japon',
    continent: 'Asie',
    image: 'assets/images/japon.jpg',
    description:
        'Pays très sûr sur le plan sanitaire, entre métropoles et campagnes.',
    vaccins: const [
      Vaccin(
        nom: 'Vaccins de routine à jour',
        obligatoire: false,
        description: 'Vérifiez vos vaccins habituels (tétanos, diphtérie, rougeole, etc.).',
      ),
      Vaccin(
        nom: 'Hépatite A',
        obligatoire: false,
        description:
            'Peut être conseillée selon le profil et la durée du séjour.',
      ),
    ],
    risques: const [
      RisqueSanitaire(
        nom: 'Chaleur et humidité estivales',
        niveau: NiveauRisque.moyen,
        prevention: 'Hydratation fréquente, pauses à l\'ombre.',
      ),
      RisqueSanitaire(
        nom: 'Séismes',
        niveau: NiveauRisque.faible,
        prevention: 'Repérez les consignes de sécurité de votre hébergement.',
      ),
    ],
    conseils: const [
      'Vérifiez que vos médicaments personnels sont autorisés au Japon.',
      'Gardez l\'ordonnance et la liste de vos traitements sur vous.',
      'L\'eau du robinet est potable.',
    ],
    urgences: const {'Ambulance / Pompiers': '119', 'Police': '110'},
    lienOfficiel: 'https://www.who.int/travel-advice',
  ),
];
