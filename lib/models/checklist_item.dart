class ChecklistItem {
  final String id;
  final String libelle;
  final String categorie;
  bool estCoche;

  ChecklistItem({
    required this.id,
    required this.libelle,
    required this.categorie,
    this.estCoche = false,
  });
}
