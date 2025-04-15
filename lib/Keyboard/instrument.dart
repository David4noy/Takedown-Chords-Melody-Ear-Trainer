enum Instrument {
  guitr(name: 'Guitar', path: 'assets/sf2/guitar.sf2'),
  piano(name: 'Piano', path: 'assets/sf2/tight_piano.sf2'),
  choir(name: 'Choir', path: 'assets/sf2/choir.sf2'),;

  final String name;
  final String path;

  const Instrument({required this.name, required this.path});

  
}
