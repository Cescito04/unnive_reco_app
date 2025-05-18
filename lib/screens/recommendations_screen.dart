import 'package:flutter/material.dart';

class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> universities = [
      {
        'name': 'Université Cheikh Anta Diop',
        'location': 'Dakar, Sénégal',
        'description':
            'Une des plus prestigieuses universités d\'Afrique de l\'Ouest, spécialisée en sciences et médecine',
        'rating': '4.8',
        'image': 'assets/images/ucad.jpg',
        'specialties': ['Médecine', 'Sciences', 'Lettres'],
      },
      {
        'name': 'Université de Yaoundé I',
        'location': 'Yaoundé, Cameroun',
        'description':
            'Université publique de référence en Afrique centrale, excellence en recherche',
        'rating': '4.7',
        'image': 'assets/images/yaounde.jpg',
        'specialties': ['Droit', 'Économie', 'Sciences'],
      },
      {
        'name': 'Université Mohammed V',
        'location': 'Rabat, Maroc',
        'description':
            'Institution historique offrant une formation de qualité en ingénierie et sciences humaines',
        'rating': '4.6',
        'image': 'assets/images/mohammed5.jpg',
        'specialties': ['Ingénierie', 'Sciences Humaines', 'Médecine'],
      },
      {
        'name': 'Université de Nairobi',
        'location': 'Nairobi, Kenya',
        'description':
            'Première université du Kenya, leader en recherche et innovation en Afrique de l\'Est',
        'rating': '4.5',
        'image': 'assets/images/nairobi.jpg',
        'specialties': ['Agriculture', 'Technologie', 'Médecine'],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recommandations',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1A237E),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color(0xFF1A237E).withOpacity(0.1), Colors.white],
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: universities.length,
          itemBuilder: (context, index) {
            final university = universities[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 20),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // En-tête de la carte
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A237E),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        university['name']!,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Localisation
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Color(0xFF1A237E),
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              university['location']!,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        // Description
                        Text(
                          university['description']!,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Spécialités
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children:
                              (university['specialties'] as List<String>).map((
                                specialty,
                              ) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(
                                      0xFF1A237E,
                                    ).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    specialty,
                                    style: const TextStyle(
                                      color: Color(0xFF1A237E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                        const SizedBox(height: 16),
                        // Note
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                university['rating']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
