class RnaTranscription {
  final nucleotideComplementMap = const {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U',
  };

  String toRna(String dna) =>
      List.generate(dna.length, (index) => nucleotideComplementMap[dna[index]],
              growable: false)
          .join();
}
