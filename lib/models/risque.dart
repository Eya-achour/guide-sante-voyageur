enum NiveauRisque { faible, moyen, eleve }

class RisqueSanitaire {
  final String nom;
  final NiveauRisque niveau;
  final String prevention;

  const RisqueSanitaire({
    required this.nom,
    required this.niveau,
    required this.prevention,
  });
}
