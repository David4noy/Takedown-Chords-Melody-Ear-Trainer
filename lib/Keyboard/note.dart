enum Note {
  c(48, 'C'),
  db(49, 'Db'),
  d(50, 'D'),
  eb(51, 'Eb'),
  e(52, 'E'),
  f(53, 'F'),
  gb(54, 'Gb'),
  g(55, 'G'),
  ab(56, 'Ab'),
  a(57, 'A'),
  bb(58, 'Bb'),
  b(59, 'B'),
  c1(60, 'C'),
  space(0, ' ');

  const Note(
    this.midi,
    this.name,
  );
  final int midi;
  final String name;
}

const List<Note> allWhiteNotes = [
  Note.c,
  Note.d,
  Note.e,
  Note.f,
  Note.g,
  Note.a,
  Note.b,
  Note.c1
];

const List<Note> allBlackNotes = [
  Note.db,
  Note.eb,
  Note.space,
  Note.gb,
  Note.ab,
  Note.bb,
  Note.space,
];
