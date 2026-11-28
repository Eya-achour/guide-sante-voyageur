import 'package:flutter/material.dart';

import '../models/risque.dart';

class RiskChip extends StatelessWidget {
  final RisqueSanitaire risque;

  const RiskChip({super.key, required this.risque});

  Color get _couleur {
    switch (risque.niveau) {
      case NiveauRisque.faible:
        return Colors.green;
      case NiveauRisque.moyen:
        return Colors.orange;
      case NiveauRisque.eleve:
        return Colors.red;
    }
  }

  String get _libelle {
    switch (risque.niveau) {
      case NiveauRisque.faible:
        return 'Risque faible';
      case NiveauRisque.moyen:
        return 'Risque moyen';
      case NiveauRisque.eleve:
        return 'Risque élevé';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: _couleur.withValues(alpha: 0.1),
        border: Border.all(color: _couleur),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.warning_amber, color: _couleur),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  risque.nom,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(_libelle, style: TextStyle(color: _couleur)),
            ],
          ),
          const SizedBox(height: 4),
          Text(risque.prevention),
        ],
      ),
    );
  }
}
