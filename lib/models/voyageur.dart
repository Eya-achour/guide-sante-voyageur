enum TypeVoyage { tourisme, affaires, aventure }

class Voyageur {
  String nom;
  int dureeSejour;
  TypeVoyage typeVoyage;
  bool estEnceinte;
  bool aAllergies;
  bool aMaladieChronique;

  Voyageur({
    this.nom = '',
    this.dureeSejour = 7,
    this.typeVoyage = TypeVoyage.tourisme,
    this.estEnceinte = false,
    this.aAllergies = false,
    this.aMaladieChronique = false,
  });
}
