class RnaTranscription {
  static const nucleotides = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U',
  };

  String toRna(String dna) =>
      List.generate(dna.length, (index) => nucleotides[dna[index]],
              growable: false)
          .join();
}
