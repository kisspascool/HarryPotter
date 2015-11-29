\version "2.18.2"

\header {
  title = "Harry Potter"
  composer = "John Williams, Alexandre Desplat"
  arranger = "Ryan Clare"
  % Supprimer le pied de page par défaut
  tagline = "v.0.9"
}
\paper {
  #(set-paper-size "a3")
  indent = 25\mm
  short-indent = 15\mm
}
global = {
  \set Score.skipBars = ##t
  \time 6/8
  \tempo 4.=54
  \compressFullBarRests
}

track = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \set Score.currentBarNumber = #1
  % Permit first bar number to be printed
  %\bar ""
  \time 6/8
  \tempo 4.=54
   s2. |%2
   s2.*32 |%34
   \time 3/8
   s4. |%35
   \time 6/8
   s2.*3 \mark \default \bar "||" %38
   \time 3/4
   s2.*7 |%45
   \time 2/4
   s2 |%46
   \time 4/4
   s1*8 |%54
   \time 3/4
   s2.*11 |%65
   \time 2/4
   s2 |%66
   \time 4/4
   s1*8 \mark \default \bar "||" %74
   \time 3/2
   s1.*18 |%92
   \time 2/4
   s2 \mark \default \bar "||" %93
   \time 4/4
   s1*24 \mark \default \bar "||" %117
   \time 3/4
   s2.*18 \mark \default \bar "||" %135
   \time 6/8
   s2.*6 \bar "|."
}

PartPOneVoiceOne =  \relative b' { %Voix 1, original Glockenspiel, now Flute
  \global
  \clef "treble" \key g \major r4. r4 b8 \mp | % 1
  e8. \mf g16 fis8 e8 r8 b'8 | % 3
  a4. fis4. | % 4
  e8. g16 fis8 dis4 f8 | % 5
  b,4. b4 b8 | % 6
  e8. g16 fis8 e4 b'8 | % 7
  d4 cis8 c4 gis8 | % 8
  c8. b16 ais8 cis,4 g'8 | % 9
  e4. ~ e4 g8 |
  b4 g8 b4 g8 | % 11
  c4 b8 ais4 fis8 | % 12
  g8. b16 ais8 ais,4 b8 | % 13
  b'4. ~ b4 g8 | % 14
  b4 g8 b4 g8 | % 15
  d'4 cis8 c4 gis8 | % 16
  c8. b16 ais8 ais,4 g'8 | % 17
  e4. r4 r8 | % 18
  R2.*6 | % 24
  d'4 \f cis8 c4 gis8 | % 25
  c8. b16 ais8 ais,4 g'8 | % 26
  e4. r4 r8 | % 27
  e8 g8 b8 g8 b8 e8 | % 28
  g8 e8 b8 cis8 ais8 fis8 | % 29
  e8 g8 b8 g8 b8 e8 |
  b4. r4 r8 | % 31
  r8 b8 ais8 b4. | % 32
  d4 cis8 c4 gis8 | % 33
  c8. b16 ais8 ais,4 g'8 | % 34
  \time 3/8  e4 e8 \mf | % 35
  \time 6/8  e'4 c8 e4 c8 | % 36
  \tempo 4.=60 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  \tempo 4.=66 | % 37
  e8. c16 a8 dis,4 c8 | % 38
  \time 3/4  | % 38
  \tempo 4=107 c4 g'4 g4 | % 39
  g4 f4 c'4 |
  e4 c4 e,4 | % 41
  e4 d4 a'16 \< b16 a32 b32 c32 d32 | % 42
  e8 \! \f d8 f4 d4 | % 43
  e8 d8 f4 d4 | % 44
  e8 d8 f4 e4 | % 45
  \time 2/4  c4 d4 | % 46
  \time 4/4  | % 46
  \tempo 4=165 b8 b8 b8 b8 b8 b8 ais8 b8 | % 47
  c4 b8 ais8 b4 g4 | % 48
  a4 a8 gis8 a4 c,4 | % 49
  b8 r8 e8 g8 ais2 |
  b8 b8 b8 b8 b8 b8 ais8 b8 | % 51
  d4 c8 b8 c4 f,4 | % 52
  c'4 b8 ais8 b4 e,4 | % 53
  g2 dis2 | % 54
  \time 3/4  | % 54
  \tempo 4=107 c4 \mf g'4 g4 | % 55
  g4 f4 c'4 | % 56
  e4 c4 e,4 | % 57
  e4 d2 | % 58
  es8 d8 c4 as'4 | % 59
  bes8 c8 des2 |
  a8 g8 f4 c'4 | % 61
  c2 \< <g d'>4 | % 62
  e'8 \! \f d8 f4 d4 | % 63
  e8 d8 f4 d4 | % 64
  e8 d8 f4 e4 | % 65
  \time 2/4  c4 d4 | % 66
  \time 4/4  | % 66
  \tempo 4=165 e8 e8 e8 e8 e8 e8 dis8 e8 | % 67
  f4 e8 dis8 e4 c4 | % 68
  d4 d8 cis8 d4 f,4 | % 69
  e8 r8 a8 c8 dis2 |
  e8 e8 e8 e8 e8 e8 dis8 e8 | % 71
  g4 f8 e8 f4 ais,4 | % 72
  f'4 e8 dis8 e4 a,4 | % 73
  c2 e,4 r4 | % 74
  \key as \major \time 3/2 R1.*2 | % 76
  \tempo 2=92 | % 76
  f2 \mf c2 as2 | % 77
  as'2 \< g2 f2 | % 78
  f2 des2 as2 | % 79
  as'2 g2 f2 |
  <f f'>2 \! \f <c c'>2 <as as'>2 | % 81
  <as' as'>2 \< <g g'>2 <f f'>2 | % 82
  <f f'>2 <des des'>2 <as as'>2 | % 83
  <as' as'>2 <g g'>2 <f f'>2 | % 84
  <fis fis'>2 \! \ff <d d'>2 <b b'>2 | % 85
  <b b'>2 <a a'>2 <g g'>2 | % 86
  <g' g'>2 <es es'>2 <c c'>2 | % 87
  <c' c'>2 <bes bes'>2 <as as'>2 | % 88
  as2 \mf f2 des'2 | % 89
  fis,2 b2 d,2 |
  as'2 ges4 f4 des'4 des,4 | % 91
  fis2 b2 d,2 | % 92
  \key f \major \time 2/4 | % 92
  \tempo 2=108 f8 -"accel." \< g8 \tempo 2=124 a8 bes8 | % 93
  \time 4/4  | % 93
  \tempo 4=124 f4 \! \f c'4 e,4 g4 | % 94
  bes4 d4 c4 a4 | % 95
  bes4 g4 f4 c'4 | % 96
  g4 b4 c4 c,4 | % 97
  f4 c'4 e,4 g4 | % 98
  bes4 d4 c4 a4 | % 99
  bes4 g4 f4 c'4 |
  g4 c4 f,4 f'4 | % 101
  a,4 e4 a4 e4 | % 102
  a4 d8 e8 f8. e16 d8 a8 | % 103
  g4 d4 g4 d4 | % 104
  g8 c8 d8 e8 e8. d16 c8 a8 | % 105
  a4 e4 a4 e4 | % 106
  a4 d8 e8 f8. e16 d8 a8 | % 107
  g4 d4 g4 d4 | % 108
  c'4 r4 c,4 d8 e8 | % 109
  f4 c'4 e,4 g4 |
  bes4 d4 c4 a4 | % 111
  bes4 g4 f4 c'4 | % 112
  g4 b4 c4 c,4 | % 113
  f4 c'4 e,4 g4 | % 114
  bes4 d4 c4 a4 | % 115
  bes4 g4 f4 c'4 | % 116
  \tempo 4=108 | % 116
  g4 c4 f,2 | % 117
  \key a \major \time 3/4 | % 117
  \tempo 4=92 a4 \p b4 cis4 | % 118
  cis4 b4 a4 | % 119
  gis4 a4 b4 |
  a4 gis4 fis4 | % 121
  <d a'>2. | % 122
  <cis eis>2. | % 123
  <d gis>2 fis4 | % 124
  <gis, cis>2. | % 125
  \tempo 4=110 | % 125
  a'4 \mf b4 cis4 | % 126
  cis4 b4 a4 | % 127
  gis4 a4 b4 | % 128
  a4 gis4 fis4 | % 129
  \tempo 4=100 | % 129
  a,4 b4 cis4 |
  cis4 d4 e4 | % 131
  d4 e4 fis4 | % 132
  gis8 a8 b4 cis4 | % 133
  d4 e2 | % 134
  <d fis>4 <e gis>2 | % 135
  \key c \major \time 6/8 | % 135
  \tempo 4.=43 a,8. \f c16 b8 a4 e'8 | % 136
  d4. <g, b>4. | % 137
  a8. c16 b8 g4 bes8 | % 138
  a2. | % 139
  <cis, a'>2. \fermata |
  a2. \fermata \bar "|."
}

PartPTwoVoiceOne =  \relative b' {% Voix 2, original Vibraphone 1, now Clarinet
  \global \clef "treble" \key g \major r4. r4
  b8 \mp | % 2
  e8. g16 fis8 e8 r8 b'8 | % 3
  a4. fis4. | % 4
  e8. g16 fis8 dis4 f8 | % 5
  b,4. b4 b8 | % 6
  e8. g16 fis8 e4 b'8 | % 7
  <d,, g bes d>4. \mf <c f as c>4. | % 8
  <c e a c>4. <cis e fis cis'>4. | % 9
  e'4. ~ e4 g8 |
  b4 g8 b4 g8 | % 11
  c4 b8 ais4 fis8 | % 12
  g8. b16 ais8 ais,4 b8 | % 13
  b'4. ~ b4 g8 | % 14
  b4 g8 b4 g8 | % 15
  <d, g bes d>4. <c f as c>4. | % 16
  <c e a c>4. <cis e fis cis'>4. | % 17
  e4 g8 b4 b,8 | % 18
  e4 \f g8 fis4 b8 | % 19
  e8. g16 fis8 e4 b'8 |
  a4. fis4 ~ fis8 | % 21
  e8. g16 fis8 dis4 f8 | % 22
  b,4. ~ b4 b,8 | % 23
  e8 \< g8 b8 e8 g8 b8 | % 24
  <d, g d'>4 \! \mf cis'8 <c, fis c'>4 gis'8 | % 25
  <c, e c'>8. b'16 ais8 cis,4 g'8 | % 26
  e8 e,8 g8 b4. | % 27
  <b, e>8 \f <e g>8 <g b>8 <e g>8 <g b>8 <b e>8 | % 28
  <e g>8 <b e>8 <g b>8 <fis cis'>8 <cis ais'>8 <ais fis'>8 | % 29
  <b e>8 <e g>8 <g b>8 <e g>8 <g b>8 <b e>8 |
  \tuplet 3/2  {
    e,16 g,16 b16
  }
  \tuplet 3/2  {
    e16 g16 b16
  }
  \tuplet 3/2  {
    e16 g16 b16
  }
  \tuplet 3/2  {
    e16 b16 g16
  }
  \tuplet 3/2  {
    b16 g16 e16
  }
  \tuplet 3/2  {
    b16 g16 e16
  }
  | % 31
  e8 <g b>8 <fis ais>8 <g b>4. | % 32
  <d' g d'>4 cis'8 <c, f c'>4 gis'8 | % 33
  <c, e c'>8. b'16 ais8 <ais, cis>4 g'8 | % 34
  \time 3/8  e4 e8 | % 35
  \clef "treble^8" \time 6/8 e'4 c8 e4 c8 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  e8. c16 a8 dis,4 c8 | % 38
  \clef "treble" \time 3/4 | % 38
  <e, g e'>2. \mp | % 39
  <g b f'>2. |
  <e g e'>2. | % 41
  <g b f'>2 a16 \< b16 a32 b32 c32 d32 | % 42
  <g, c e>8 \! \mf <g c d>8 <g c f>4 <g c d>4 | % 43
  <g c e>8 <g c d>8 <g c f>4 <g c d>4 | % 44
  <g c e>8 <g c d>8 <g c f>4 <g c e>4 | % 45
  \time 2/4  <f a c>4 <g b d>4 | % 46
  \time 4/4  <g b>8 <g b>8 <g b>8 <g b>8 <g b>8
  <g b>8 <fis ais>8 <g b>8 | % 47
  <gis c>4 <g b>8 <fis ais>8 <g b>4 <e g>4 | % 48
  <e a>4 <e a>8 <dis gis>8 <e a>4 <a, c>4 | % 49
  <g b>8 r8 <b e>8 <e g>8 <fis ais>2 |
  <g b>8 <g b>8 <g b>8 <g b>8 <g b>8 <g b>8 <fis ais>8 <g b>8 | % 51
  <ais d>4 <a c>8 <g b>8 <a c>4 <c, f>4 | % 52
  <gis' c>4 <g b>8 <fis ais>8 <g b>4 <b, e>4 | % 53
  <e g>2 <b dis>2 | % 54
  \time 3/4  | % 54
  \tuplet 3/2  {
    c8 \mp g'8 e'8
  }
  g8 e'8 c8 g8 | % 55
  <es gis c>4 <f a c>4 <g, c'>4 | % 56
  \tuplet 3/2  {
    c,8 g'8 e'8
  }
  \tuplet 3/2  {
    g8 e8 g,8
  }
  \tuplet 3/2 {
    e'8 g8 g,8
  }
  | % 57
  \tuplet 3/2  {
    c,8 g'8 d'8
  }
  \tuplet 3/2  {
    g,8 d'8 g,8
  }
  \tuplet 3/2  {
    g'8 d8 g,8
  }
  | % 58
  c,8 as'8 es'8 as8 es8 as,8 | % 59
  ges8 des'8 bes'8 des8 bes8 ges8 |
  f8 e8 d4 a'4 | % 61
  c,4 \< g'4 <g, d'>4 | % 62
  <g c e>8 \! \f <g c d>8 <g c f>4 <g c d>4 | % 63
  <g c e>8 <g c d>8 <g c f>4 <g c d>4 | % 64
  <g c e>8 <g c d>8 <g c f>4 <g c e>4 | % 65
  \time 2/4  <f a c>4 <g b d>4 | % 66
  \time 4/4  <c e>8 <c e>8 <c e>8 <c e>8 <c e>8
  <c e>8 <b dis>8 <c e>8 | % 67
  <cis f>4 <c e>8 <b dis>8 <c e>4 <a c>4 | % 68
  <a d>4 <a d>8 <gis cis>8 <a d>4 <d, f>4 | % 69
  <c e>8 r8 <e a>8 <a c>8 <b dis>2 |
  <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <b dis>8 <c e>8 | % 71
  <dis g>4 <cis f>8 <c e>8 <cis f>4 <f, ais>4 | % 72
  <cis' f>4 <c e>8 <b dis>8 <c e>4 <e, a>4 | % 73
  <gis c>2 <b, e>4 e16 d16 c16 b16 | % 74
  \key as \major \time 3/2 | % 74
  <as' f'>1. \mf |%75
  <as f'>1. | % 76
  <as f'>2 <f c'>2 <c as'>2 | % 77
  <as' as'>2 \< <g g'>2 <f f'>2 | % 78
  <as f'>2 <f des'>2 <des as'>2 | % 79
  <as' as'>2 <g g'>2 <f f'>2 |
  <as f'>2 \! \f <f c'>2 <c as'>2 | % 81
  <as' as'>2 \< <g g'>2 <f f'>2 | % 82
  <as f'>2 <f des'>2 <des as'>2 | % 83
  <as' as'>2 <g g'>2 <f f'>2 | % 84
  <fis fis'>2 \! \ff <fis d'>2 <d b'>2 | % 85
  <b' b'>2 <a a'>2 <g g'>2 | % 86
  <g g'>2 <es es'>2 <es c'>2 | % 87
  <c' c'>2 <bes bes'>2 <as as'>2 | % 88
  <des, f>2 \mf <f as>2 <des f as>2 | % 89
  <b d fis>2 <d fis>2 <b d fis>2 |
  <as des f>2 <des f>2 <des f as>2 | % 91
  <b d fis>2 <d fis>2 <b d f>2 | % 92
  \key f \major \time 2/4 | % 92
  <f' f'>8 -"accel." \< <g g'>8 <a a'>8 <bes bes'>8 | % 93
  \time 4/4  | % 93
  c4. \! \f c16 c16 c4 c4 | % 94
  d4. e16 f16 c4 f,4 | % 95
  bes4. c16 bes16 a8 c8 e8 f8 | % 96
  g4. f16 e16 d8 c8 g'16 f16 e16 d16 | % 97
  c4. c16 c16 c4 c4 | % 98
  d4. e16 f16 c4 f,4 | % 99
  bes4. c16 bes16 a8 c8 e8 f8 |
  g4 f16 e16 d16 e16 f4 f,4 | % 101
  r8 e'16 e16 e8 e8 e8 e8 f8 g8 | % 102
  f8. e16 d8 a8 r8 a8 r8 a8 | % 103
  r8 d16 d16 d8 d8 d8 d8 e8 f8 | % 104
  e8. d16 c8 g8 g16 a16 b16 c16 d16 e16 f16 g16 | % 105
  r8 e16 e16 e8 e8 e8 e8 f8 g8 | % 106
  f8. e16 d8 a8 r8 a8 r8 a8 | % 107
  r8 d16 d16 d8 d8 d8 d8 g16 f16 e16 d16 | % 108
  g16 f16 e16 d16 c16 bes16 a16 g16 a16 bes16 c16 d16 c16 bes16 a16
  bes16 | % 109
  c4 r8 c16 c16 c4 c4 |
  d4 r8 e16 f16 c4 f,4 | % 111
  bes4 r8 c16 bes16 a8 c8 e8 f8 | % 112
  g4. f16 e16 d8 c8 g'16 f16 e16 d16 | % 113
  c4 r8 c16 c16 c4 c4 | % 114
  d4 r8 e16 f16 c4 f,4 | % 115
  bes4 r8 c16 bes16 a8 c8 e8 f8 | % 116
  g8 r8 e4 f2 | % 117
  \key a \major \time 3/4 | % 117
  a,4 \p b4 cis4 | % 118
  cis4 b4 a4 | % 119
  gis4 a4 b4 |
  a4 gis4 fis4 | % 121
  <d a'>2. | % 122
  <cis eis>2. | % 123
  <d gis>2 fis4 | % 124
  <gis, cis>2. | % 125
  <a cis e>2. \mp | % 126
  <gis a cis e>2. | % 127
  <fis a cis d>2. | % 128
  <b e a>2. | % 129
  <d e a>2. \mf |
  <e gis a cis>2. | % 131
  <gis d'>2. | % 132
  gis8 a8 b4 cis4 | % 133
  d4 e2 | % 134
  <a, d fis>4 <b e gis>2 | % 135
  \key c \major \time 6/8 | % 135
  a8. \mf c16 b8 a4 e'8 | % 136
  d4. <g, b>4. | % 137
  a8. c16 b8 g4 bes8 | % 138
  <d, a'>2. | % 139
  <cis a'>2. \fermata |
  cis2. \fermata \bar "|."
}

PartPThreeVoiceOne =  \relative e' {% Voix 3, original Vibraphone 2, now Saxophone
  \global \clef "treble" \key g \major r2. | % 2
  e4. \mp e4. | % 3
  e4. e4. | % 4
  e4. ais4 b,8 | % 5
  e4 g8 b4 b,8 | % 6
  e4. e4. | % 7
  d'4 cis8 c4 gis8 | % 8
  c8. b16 ais8 cis,4 g'8 | % 9
  e4 g8 b4 b,8 |
  e4 g8 b4 b,8 | % 11
  e4 g8 c4 b,8 | % 12
  e4 g8 c,4 g'8 | % 13
  e4 g8 b4 b,8 | % 14
  e4 g8 b4 g8 | % 15
  d'4 cis8 c4 gis8 | % 16
  c8. b16 ais8 ais,4 g'8 | % 17
  e4. r4 r8 | % 18
  e4. a,4 b8 | % 19
  <b e>4. \mf \> e4. \! |
  <b e>4. \mf \> e4. \! | % 21
  <b e>4. \mf \> e4. \! | % 22
  <b fis'>4. \mf fis4 b8 | % 23
  e8. g16 fis8 e4 b'8 | % 24
  d4 cis8 c4 gis8 | % 25
  c8. b16 ais8 cis,4 g'8 | % 26
  e4. e4 g8 | % 27
  b4 g8 b4 g8 | % 28
  c4 b8 ais4 fis8 | % 29
  g8. b16 ais8 ais,4 b8 |
  b'4. b4 g8 | % 31
  b4 g8 b4 g8 | % 32
  <d d'>4 cis'8 <c, c'>4 gis'8 | % 33
  <c, c'>8. b'16 ais8 <ais, cis>4 g'8 | % 34
  \time 3/8  e4 e,8 | % 35
  \time 6/8  e'4 c8 e4 c8 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  e8. c16 a8 dis,4 c'8 | % 38
  \time 3/4  | % 38
  c,4 \mp g'4 g4 | % 39
  g4 f4 c'4 |
  e4 c4 e,4 | % 41
  e4 d4 a'16 \< b16 c16 d16 | % 42
  <g, e'>8 \! \mf <g d'>8 <g f'>4 <g d'>4 | % 43
  <g e'>8 <g d'>8 <g f'>4 <g d'>4 | % 44
  <g e'>8 <g d'>8 <g f'>4 <g e'>4 | % 45
  \time 2/4  <f' c'>4 <g d'>4 | % 46
  \time 4/4  e8 e8 e8 e8 e8 e8 dis8 e8 | % 47
  f4 e8 dis8 e4 b4 | % 48
  c4 c8 b8 c4 e4 | % 49
  e8 r8 g,8 b8 dis2 |
  e8 e8 e8 e8 e8 e8 dis8 e8 | % 51
  g4 f8 e8 f4 gis,4 | % 52
  f'4 e8 dis8 e4 g,4 | % 53
  b2 a2 | % 54
  \time 3/4  | % 54
  c4 \mp g'4 g4 | % 55
  g4 f4 c'4 | % 56
  e4 c4 e,4 | % 57
  e4 d2 | % 58
  es8 d8 c4 as'4 | % 59
  bes8 c8 des2 |
  a8 g8 f4 c'4 | % 61
  c2 \< <g d'>4 | % 62
  <g, e'>8 \! \mf <g d'>8 <g f'>4 <g d'>4 | % 63
  <g e'>8 <g d'>8 <g f'>4 <g d'>4 | % 64
  <g e'>8 <g d'>8 <g f'>4 <g e'>4 | % 65
  \time 2/4  <f c'>4 <g d'>4 | % 66
  \time 4/4  a'8 a8 a8 a8 a8 a8 gis8 a8 | % 67
  ais4 a8 gis8 a4 e4 | % 68
  f4 f8 e8 f4 a,4 | % 69
  a8 r8 c8 e8 gis2 |
  a8 a8 a8 a8 a8 a8 gis8 a8 | % 71
  c4 ais8 a8 ais4 f4 | % 72
  ais4 a8 gis8 a4 c,4 | % 73
  f2 gis,4 r4 | % 74
  \key as \major \time 3/2 | % 74
  <f f'>1. \mp | %75
  <f f'>1. | % 76
  <f f'>1. ~ ~ | % 77
  <f f'>1 \< <f f'>2 | % 78
  <des des'>1. ~ ~ | % 79
  <des des'>1 <des des'>2 |
  <f f'>1. \! \f ~ ~ | % 81
  <f f'>2 \< <f f'>2 <f f'>2 | % 82
  <des des'>1. ~ ~ | % 83
  <des des'>2 <des des'>2 <f f'>2 | % 84
  <b b'>1. \! \ff ~ ~ | % 85
  <b b'>2 <a a'>2 <g g'>2 | % 86
  <c c'>1. ~ ~ | % 87
  <c c'>2 <c bes'>1 | % 88
  as'2 \mf f2 des'2 | % 89
  fis,2 b2 d,2 |
  as'2 ges4 f4 des'4 des,4 | % 91
  fis2 b2 d,2 | % 92
  \key f \major \time 2/4 | % 92
  f,8 -"accel." \< g8 a8 bes8 | % 93
  \time 4/4  | % 93
  r8 \! \f <f a>8 r8 <f a>8 r8 g8 r8 g8 | % 94
  r8 bes8 r8 bes8 r8 <f a>8 r8 <f a>8 | % 95
  r8 f8 r8 f8 r8 f8 r8 f8 | % 96
  r8 b8 r8 b8 r8 c8 r8 c8 | % 97
  r8 <f, a>8 r8 <f a>8 r8 g8 r8 g8 | % 98
  r8 bes8 r8 bes8 r8 a8 r8 a8 | % 99
  r8 f8 r8 f8 r8 f8 r8 f8 |
  bes8 r8 e,4 a4 f4 | % 101
  r8 cis'16 cis16 cis8 cis8 cis8 cis8 d8 e8 | % 102
  d8. e16 a,8 f8 r8 f8 r8 f8 | % 103
  r8 b16 b16 b8 b8 b8 b8 c8 d8 | % 104
  c8. b16 g8 e8 e16 f16 g16 a16 b16 c16 d16 e16 | % 105
  r8 cis16 cis16 cis8 cis8 cis8 cis8 d8 e8 | % 106
  d8. e16 a,8 f8 r8 f8 r8 f8 | % 107
  r8 b16 b16 b8 b8 b8 b8 b8 b8 | % 108
  c4 r4 c4 d8 e8 | % 109
  a8 <f a>8 r8 <f a>8 r8 g8 r8 g8 |
  r8 bes8 r8 bes8 r8 <f a>8 r8 <f a>8 | % 111
  r8 f8 r8 f8 r8 f8 r8 f8 | % 112
  r8 b8 r8 b8 r8 c8 r8 c8 | % 113
  r8 <f, a>8 r8 <f a>8 r8 g8 r8 g8 | % 114
  r8 bes8 r8 bes8 r8 <f a>8 r8 <f a>8 | % 115
  r8 f8 r8 f8 r8 <c f>8 r8 <c f>8 | % 116
  <e bes'>8 r8 e4 a2 | % 117
  \key a \major \time 3/4 | % 117
  e2. \p | % 118
  <a cis>2. | % 119
  <gis bis>2. |
  <a cis>2. | % 121
  a4 cis2 | % 122
  <gis b>2. | % 123
  <fis, d'>2. | % 124
  fis'4 eis2 | % 125
  a4 \mf b4 cis4 | % 126
  cis4 b4 a4 | % 127
  gis4 a4 b4 | % 128
  a4 gis4 fis4 | % 129
  <fis, fis'>2. \mf |
  <e e'>2. | % 131
  <fis fis'>2. | % 132
  <b e>2. | % 133
  <fis a>2. | % 134
  <d' fis>4 <e gis>2 | % 135
  \key c \major \time 6/8 | % 135
  a,4. \mf a4. | % 136
  b4. g4. | % 137
  a4. b4. | % 138
  <d a'>2. | % 139
  <cis a'>2. \fermata |
  e2. \fermata \bar "|."
}

PartPThreeVoiceTwo =  \relative e' {% Voix 3, original Vibraphone 2, now Trompettes
  \global \clef "treble" \key g \major r2. | % 2
  e'4. \mp e4. | % 3
  e4. e4. | % 4
  e4. ais4 b,8 | % 5
  e4 g8 b4 b,8 | % 6
  e4. e4. | % 7
  d4 cis8 c4 gis8 | % 8
  c8. b16 ais8 cis4 g8 | % 9
  e4 g8 b4 b,8 |
  e4 g8 b4 b,8 | % 11
  e4 g8 c4 b,8 | % 12
  e4 g8 c,4 g'8 | % 13
  e4 g8 b4 b,8 | % 14
  e4 g8 b4 g8 | % 15
  d'4 cis8 c4 gis8 | % 16
  c8. b16 ais8 ais,4 g'8 | % 17
  e4. r4 r8 | % 18
  e'4. a,4 b,8 | % 19
  <b e>4. \mf \> e4. \! |
  <b e>4. \mf \> e4. \! | % 21
  <b e>4. \mf \> e4. \! | % 22
  <b fis'>4. \mf fis'4 b,8 | % 23
  e8. g16 fis8 e4 b'8 | % 24
  d4 cis8 c4 gis8 | % 25
  c8. b16 ais8 cis,4 g'8 | % 26
  e4. e4 g8 | % 27
  b4 g8 b4 g8 | % 28
  c4 b8 ais4 fis8 | % 29
  g8. b16 ais8 ais4 b8 |
  b'4. b4 g8 | % 31
  b4 g8 b4 g8 | % 32
  <d d'>4 cis'8 <c, c'>4 gis'8 | % 33
  <c, c'>8. b'16 ais8 <ais, cis>4 g'8 | % 34
  \time 3/8  e4 e,8 | % 35
  \time 6/8  e'4 c8 e4 c8 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  e8. c16 a8 dis,4 c'8 | % 38
  \time 3/4  | % 38
  c,4 \mp g'4 g4 | % 39
  g4 f4 c'4 |
  e4 c4 e,4 | % 41
  e4 d4 a'16 \< b16 c16 d16 | % 42
  <g, e'>8 \! \mf <g d'>8 <g f'>4 <g d'>4 | % 43
  <g e'>8 <g d'>8 <g f'>4 <g d'>4 | % 44
  <g e'>8 <g d'>8 <g f'>4 <g e'>4 | % 45
  \time 2/4  <f c'>4 <g d'>4 | % 46
  \time 4/4  e8 e8 e8 e8 e8 e8 dis8 e8 | % 47
  f4 e8 dis8 e4 b4 | % 48
  c4 c8 b8 c4 e4 | % 49
  e8 r8 g,8 b8 dis2 |
  e8 e8 e8 e8 e8 e8 dis8 e8 | % 51
  g4 f8 e8 f4 gis,4 | % 52
  f'4 e8 dis8 e4 g,4 | % 53
  b2 a2 | % 54
  \time 3/4  | % 54
  c'4 \mp g'4 g4 | % 55
  g4 f4 c'4 | % 56
  e4 c4 e,4 | % 57
  e4 d2 | % 58
  es8 d8 c4 as'4 | % 59
  bes8 c8 des2 |
  a8 g8 f4 c'4 | % 61
  c2 \< <g d'>4 | % 62
  <g, e'>8 \! \mf <g d'>8 <g f'>4 <g d'>4 | % 63
  <g e'>8 <g d'>8 <g f'>4 <g d'>4 | % 64
  <g e'>8 <g d'>8 <g f'>4 <g e'>4 | % 65
  \time 2/4  <f c'>4 <g d'>4 | % 66
  \time 4/4  a8 a8 a8 a8 a8 a8 gis8 a8 | % 67
  ais4 a8 gis8 a4 e4 | % 68
  f4 f8 e8 f4 a,4 | % 69
  a8 r8 c8 e8 gis2 |
  a8 a8 a8 a8 a8 a8 gis8 a8 | % 71
  c4 ais8 a8 ais4 f4 | % 72
  ais4 a8 gis8 a4 c,4 | % 73
  f2 gis,4 r4 | % 74
  \key as \major \time 3/2 | % 74
  <f' f'>1. \mp | %75
  <f f'>1. | % 76
  <f f'>1. ~ ~ | % 77
  <f f'>1 \< <f f'>2 | % 78
  <des des'>1. ~ ~ | % 79
  <des des'>1 <des des'>2 |
  <f f'>1. \! \f ~ ~ | % 81
  <f f'>2 \< <f f'>2 <f f'>2 | % 82
  <des des'>1. ~ ~ | % 83
  <des des'>2 <des des'>2 <f f'>2 | % 84
  <b b'>1. \! \ff ~ ~ | % 85
  <b b'>2 <a a'>2 <g g'>2 | % 86
  <c c'>1. ~ ~ | % 87
  <c c'>2 <c bes'>1 | % 88
  as'2 \mf f2 des'2 | % 89
  fis,2 b2 d,2 |
  as'2 ges4 f4 des'4 des,4 | % 91
  fis2 b2 d,2 | % 92
  \key f \major \time 2/4 | % 92
  f,8 -"accel." \< g8 a8 bes8 | % 93
  \time 4/4  | % 93
  r8 \! \f <f a>8 r8 <f a>8 r8 g8 r8 g8 | % 94
  r8 bes8 r8 bes8 r8 <f a>8 r8 <f a>8 | % 95
  r8 f8 r8 f8 r8 f8 r8 f8 | % 96
  r8 b8 r8 b8 r8 c8 r8 c8 | % 97
  r8 <f, a>8 r8 <f a>8 r8 g8 r8 g8 | % 98
  r8 bes8 r8 bes8 r8 a8 r8 a8 | % 99
  r8 f8 r8 f8 r8 f8 r8 f8 |
  bes8 r8 e,4 a4 f4 | % 101
  r8 cis'16 cis16 cis8 cis8 cis8 cis8 d8 e8 | % 102
  d8. e16 a,8 f8 r8 f8 r8 f8 | % 103
  r8 b16 b16 b8 b8 b8 b8 c8 d8 | % 104
  c8. b16 g8 e8 e16 f16 g16 a16 b16 c16 d16 e16 | % 105
  r8 cis16 cis16 cis8 cis8 cis8 cis8 d8 e8 | % 106
  d8. e16 a,8 f8 r8 f8 r8 f8 | % 107
  r8 b16 b16 b8 b8 b8 b8 b8 b8 | % 108
  c4 r4 c,4 d8 e8 | % 109
  a8 <f a>8 r8 <f a>8 r8 g8 r8 g8 |
  r8 bes8 r8 bes8 r8 <f a>8 r8 <f a>8 | % 111
  r8 f8 r8 f8 r8 f8 r8 f8 | % 112
  r8 b8 r8 b8 r8 c8 r8 c8 | % 113
  r8 <f, a>8 r8 <f a>8 r8 g8 r8 g8 | % 114
  r8 bes8 r8 bes8 r8 <f a>8 r8 <f a>8 | % 115
  r8 f8 r8 f8 r8 <c f>8 r8 <c f>8 | % 116
  <e bes'>8 r8 e4 a2 | % 117
  \key a \major \time 3/4 | % 117
  e2. \p | % 118
  <a cis>2. | % 119
  <gis bis>2. |
  <a cis>2. | % 121
  a4 cis2 | % 122
  <gis b>2. | % 123
  <fis, d'>2. | % 124
  fis'4 eis2 | % 125
  a'4 \mf b4 cis4 | % 126
  cis4 b4 a4 | % 127
  gis4 a4 b4 | % 128
  a4 gis4 fis4 | % 129
  <fis, fis'>2. \mf |
  <e e'>2. | % 131
  <fis fis'>2. | % 132
  <b e>2. | % 133
  <fis a>2. | % 134
  <d' fis>4 <e gis>2 | % 135
  \key c \major \time 6/8 | % 135
  a,4. \mf a4. | % 136
  b4. g4. | % 137
  a4. b4. | % 138
  <d, a'>2. | % 139
  <cis a'>2. \fermata |
  e2. \fermata \bar "|."
}

PartPFourVoiceOne =  \relative e' {% Voix 4, original Tubular Bells
  \global \clef "treble" \key g \major r2.| % 2
  R2.*32 | % 34
  \time 3/8  r4 e8 \mp | % 35
  \time 6/8  | % 35
  e'4 \mf c8 e4 c8 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  e8. c16 a8 dis,4 c'8 | % 38
  \time 3/4  | % 38
  c4 \mp r2 | % 39
  R2.*6 | % 45
  \time 2/4  R2 | % 46
  \time 4/4  e1 | % 47
  f2. b,4 | % 48
  c2. c4 | % 49
  e,8 r8 g8 b8 dis2 |
  e1 | % 51
  g2. gis,4 | % 52
  f'2. e4 | % 53
  g2 dis2 | % 54
  \time 3/4  R2.*8 | % 62
  e8 d8 f4 d4 | % 63
  e8 d8 f4 d4 | % 64
  e8 d8 f4 e4 | % 65
  \time 2/4  c4 d4 | % 66
  \time 4/4  e1 | % 67
  f2. c4 | % 68
  d2. f,4 | % 69
  e8 r8 a8 c8 dis2 |
  e1 | % 71
  g2. ais,4 | % 72
  f'2. a,4 | % 73
  c2 gis4 r4 | % 74
  \key as \major \time 3/2 R1.*18 | % 92
  \key f \major \time 2/4 | % 92
  R2 | % 93
  \time 4/4  R1*24 | % 117
  \key a \major \time 3/4 R2.*18 | % 135
  \key c \major \time 6/8 R2.*6 \bar "|."
}

PartPFiveVoiceOne =  \relative e' {% Voix 5, original Xylophone 1 now Violon I
  \global \transposition c'' \clef "treble" \key g \major r2. | % 2
  R2.*5 | %7
  d4. c4. |%8
  c4. cis4. |%9
  R2.*6 |%15
  d4. c4. |%16
  c4. cis4. |%17
  R2. | % 18
  e4. \mp e4. \< | % 19
  e'4. e4. |
  e4. e4. | % 21
  e4. \! \mf ais4 b,8 | % 22
  e4 g8 b4 b,8 | % 23
  e4. e4. | % 24
  g,16 ais16 d8 ais8 fis16 gis16 c8 gis8 | % 25
  a16 c16 e8 ais,8 fis16 ais16 cis8 g8 | % 26
  e'4 g8 b4 b,8 | % 27
  e4 g8 b4 b,8 | % 28
  e4 g8 c4 b,8 | % 29
  e4 g8 c,4 g'8 |
  e4 g8 b4 b,8 | % 31
  e4 g8 b4 g8 | % 32
  d4 cis8 c4 gis8 | % 33
  c8. b16 ais8 ais,4 g'8 | % 34
  \time 3/8  e4 e8 | % 35
  \time 6/8  e'4 c8 e4 c8 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  e8. c16 a8 dis,4 c'8 | % 38
  \time 3/4  | % 38
  c,4 \mp g'4 g4 | % 39
  g4 f4 c'4 |
  e4 c4 e,4 | % 41
  e4 d4 a'16 \< b16 c16 d16 | % 42
  <e, e'>8 \! \mf <d d'>8 <f f'>4 <d d'>8 <d d'>8 | % 43
  <e e'>8 <d d'>8 <f f'>4 <d d'>8 <d d'>8 | % 44
  <e e'>8 <d d'>8 <f f'>4 <e e'>8 <e e'>8 | % 45
  \time 2/4  <c c'>8 c'8 <d, d'>4 | % 46
  \time 4/4  e8 e8 e8 e8 e8 e8 dis8 e8 | % 47
  f4 e8 dis8 e4 b4 | % 48
  c4 c8 b8 c4 e4 | % 49
  e8 r8 g,8 b8 dis2 |
  e8 e8 e8 e8 e8 e8 dis8 e8 | % 51
  g4 f8 e8 f4 gis,4 | % 52
  f'4 e8 dis8 e4 g,4 | % 53
  b2 a2 | % 54
  \time 3/4  | % 54
  c4 \mp g'4 g4 | % 55
  g4 f4 c'4 | % 56
  e4 c4 e,4 | % 57
  e4 d2 | % 58
  es8 d8 c4 as'4 | % 59
  bes8 c8 des2 |
  a8 g8 f4 c'4 | % 61
  c2 \< <g d'>4 | % 62
  <e e'>8 \! \mf <d d'>8 <f f'>8 <f f'>8 <d d'>8 <d d'>8 | % 63
  <e e'>8 <d d'>8 <f f'>8 <f f'>8 <d d'>8 <d d'>8 | % 64
  <e e'>8 <d d'>8 <f f'>8 <f f'>8 <e e'>8 <e e'>8 | % 65
  \time 2/4  <c c'>8 c'8 <d, d'>4 | % 66
  \time 4/4  a'8 a8 a8 a8 a8 a8 gis8 a8 | % 67
  ais4 a8 gis8 a4 e4 | % 68
  f4 f8 e8 f4 a,4 | % 69
  a8 r8 c8 e8 gis2 |
  a8 a8 a8 a8 a8 a8 gis8 a8 | % 71
  c4 ais8 a8 ais4 f4 | % 72
  ais4 a8 gis8 a4 c,4 | % 73
  f2 gis,4 r4 | % 74
  \key as \major \time 3/2 | % 74
  <f' f'>1. \mp |%75
  <f f'>1. | % 76
  <f f'>1. \mf ~ ~ | % 77
  <f f'>1 \< <f f'>2 | % 78
  <des des'>1. ~ ~ | % 79
  <des des'>1 <des des'>2 |
  <f f'>1. \! \f ~ ~ | % 81
  <f f'>2 \< <f f'>1 | % 82
  <des des'>1. ~ ~ | % 83
  <des des'>2 <des des'>2 <f f'>2 | % 84
  <b b'>1. \! \ff ~ ~ | % 85
  <b b'>2 <a a'>2 <g g'>2 | % 86
  <c c'>1. ~ ~ | % 87
  <c c'>2 <c bes'>1 | % 88
  as2 \mf f2 des'2 | % 89
  fis,2 b2 d,2 |
  as'2 ges4 f4 des'4 des,4 | % 91
  fis2 b2 d,2 | % 92
  \key f \major \time 2/4 | % 92
  R2 | % 93
  \time 4/4  r8 -"accel." f8 a8 c8 r8 <c e>8 r8
  <c e>8 | % 94
  r8 <d f>8 r8 <d f>8 c8 f8 e8 d8 | % 95
  r8 g,8 bes8 d8 c8 bes8 g8 f8 | % 96
  g8 a8 b8 d8 c4 c4 | % 97
  r8 f,8 a8 c8 r8 <c e>8 r8 <c e>8 | % 98
  r8 d8 r8 d8 c8 f8 e8 d8 | % 99
  r8 g,8 bes8 d8 c8 a8 g8 f8 |
  g'8 r8 g4 c,4 f4 | % 101
  r8 <e cis'>8 r8 <e cis'>8 r8 <e cis'>8 r8 <e cis'>8 | % 102
  r8 d8 r8 d8 r8 d8 r8 d8 | % 103
  r8 b8 r8 b8 r8 b8 r8 b8 | % 104
  r8 c8 r8 c8 r8 c8 r8 c8 | % 105
  r8 <e cis'>8 r8 <e cis'>8 r8 <e cis'>8 r8 <e cis'>8 | % 106
  r8 d8 r8 d8 r8 d8 r8 d8 | % 107
  r8 b8 r8 b8 r8 b8 r8 b8 | % 108
  c4 r4 c4 d8 e8 | % 109
  r8 f,8 a8 c8 r8 <c e>8 r8 <c e>8 |
  r8 <d f>8 r8 <d f>8 c8 f8 e8 d8 | % 111
  r8 g,8 bes8 d8 c8 bes8 g8 f8 | % 112
  g8 a8 b8 d8 c4 c4 | % 113
  r8 f,8 a8 c8 r8 <c e>8 r8 <c e>8 | % 114
  r8 <d f>8 r8 <d f>8 c8 f8 e8 d8 | % 115
  r8 g,8 bes8 d8 c8 a8 g8 f8 | % 116
  g'8 r8 g4 c,2 | % 117
  \key a \major \time 3/4 | % 117
  e2. \p | % 118
  <a cis>2. | % 119
  <gis bis>2. |
  <a cis>2. | % 121
  a4 cis2 | % 122
  <gis b>2. | % 123
  <fis, d'>2. | % 124
  fis'4 eis2 | % 125
  <cis cis'>2. \mp | % 126
  <cis cis'>2. | % 127
  <cis cis'>2. | % 128
  <cis cis'>2. | % 129
  <fis fis'>2. \mf |
  <e e'>2. | % 131
  <fis fis'>2. | % 132
  <b e>2. | % 133
  <fis a>2. | % 134
  <d' fis>4 <e gis>2 | % 135
  \key c \major \time 6/8 | % 135
  a,8. \mf c16 b8 a4 e'8 | % 136
  d4. <g, b>4. | % 137
  a8. c16 b8 g4 bes8 | % 138
  <d, a'>4. <d a'>4. | % 139
  <cis a'>4. <cis a'>4. \fermata |
  a2. \fermata \bar "|."
}

PartPSixVoiceOne =  \relative e' {% Voix 6, original Xylophone 2 now Violon II
  \global \transposition c'' \clef "treble" \key g \major r2. | % 2
  R2.*5 |%7
  bes'4. as4. |%8
  a4. fis4. |%9
  R2.*6 |%15
  bes4. as4. |%16
  a4. fis4. |%17
  R2.| % 18
  e4. \mp e4. \< | % 19
  e'4. e4. |
  e4. e4. | % 21
  e4. \! \mf ais4 b,8 | % 22
  e4 g8 b4 b,8 | % 23
  e4. e4. | % 24
  g,16 ais16 d8 ais8 fis16 gis16 c8 gis8 | % 25
  a16 c16 e8 ais,8 fis16 ais16 cis8 g8 | % 26
  e'4 g8 b4 b,8 | % 27
  e4 g8 b4 b,8 | % 28
  e4 g8 c4 b,8 | % 29
  e4 g8 c,4 g'8 |
  e4 g8 b4 b,8 | % 31
  e4 g8 b4 g8 | % 32
  d4 cis8 c4 gis8 | % 33
  c8. b16 ais8 ais,4 g'8 | % 34
  \time 3/8  e4 e8 | % 35
  \time 6/8  e'4 c8 e4 c8 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  e8. c16 a8 dis,4 c'8 | % 38
  \time 3/4  | % 38
  c,4 \mp g'4 g4 | % 39
  g4 f4 c'4 |
  e4 c4 e,4 | % 41
  e4 d4 a'16 \< b16 c16 d16 | % 42
  <e, e'>8 \! \mf <d d'>8 <f f'>8 <f f'>8 <d d'>8 <d d'>8 | % 43
  <e e'>8 <d d'>8 <f f'>8 <f f'>8 <d d'>8 <d d'>8 | % 44
  <e e'>8 <d d'>8 <f f'>8 <f f'>8 <e e'>8 <e e'>8 | % 45
  \time 2/4  <c c'>8 c'8 <d, d'>4 | % 46
  \time 4/4  b'8 b8 b8 b8 b8 b8 ais8 b8 | % 47
  c4 b8 ais8 b4 g4 | % 48
  a4 a8 gis8 a4 c,4 | % 49
  b8 r8 e8 g8 ais2 |
  b8 b8 b8 b8 b8 b8 ais8 b8 | % 51
  d4 c8 b8 c4 f,4 | % 52
  c'4 b8 ais8 b4 e,4 | % 53
  g2 dis2 | % 54
  \time 3/4  | % 54
  c4 \mp g'4 g4 | % 55
  g4 f4 c'4 | % 56
  e4 c4 e,4 | % 57
  e4 d2 | % 58
  es8 d8 c4 as'4 | % 59
  bes8 c8 des2 |
  a8 g8 f4 c'4 | % 61
  c2 \< <g d'>4 | % 62
  <e e'>8 \! \mf <d d'>8 <f f'>8 <f f'>8 <d d'>8 <d d'>8 | % 63
  <e e'>8 <d d'>8 <f f'>8 <f f'>8 <d d'>8 <d d'>8 | % 64
  <e e'>8 <d d'>8 <f f'>8 <f f'>8 <e e'>8 <e e'>8 | % 65
  \time 2/4  <c c'>8 c'8 <d, d'>4 | % 66
  \time 4/4  e'8 e8 e8 e8 e8 e8 dis8 e8 | % 67
  f4 e8 dis8 e4 c4 | % 68
  d4 d8 cis8 d4 f,4 | % 69
  e8 r8 a8 c8 dis2 |
  e8 e8 e8 e8 e8 e8 dis8 e8 | % 71
  g4 f8 e8 f4 ais,4 | % 72
  f'4 e8 dis8 e4 a,4 | % 73
  R1 | % 74
  \key as \major \time 3/2 | % 74
  f'2 \mp c2 as2 |%77
  f'2 c2 as2 | % 76
  f'2 \mf c2 as2 | % 77
  as'2 \< g2 f2 | % 78
  f2 des2 as2 | % 79
  as'2 g2 f2 |
  f2 \! \f c2 as2 | % 81
  as'2 \< g2 f2 | % 82
  f2 des2 as2 | % 83
  as'2 g2 f2 | % 84
  fis2 \! \ff d2 b2 | % 85
  b2 a2 g2 | % 86
  g'2 es2 c2 | % 87
  c'2 bes2 as2 | % 88
  as,2 \mf f2 des'2 | % 89
  fis,2 b2 d,2 |
  as'2 ges4 f4 des'4 des,4 | % 91
  fis2 b2 d,2 | % 92
  \key f \major \time 2/4 | % 92
  f2 -"accel." | % 93
  \time 4/4  | % 93
  f4 \f c'4 e,4 g4 | % 94
  bes4 d4 c4 a4 | % 95
  bes4 g4 f4 c'4 | % 96
  g4 b4 c4 c,4 | % 97
  f4 c'4 e,4 g4 | % 98
  bes4 d4 c4 a4 | % 99
  bes4 g4 f4 c'4 |
  g4 c4 f,4 f'4 | % 101
  a,4 e4 a4 e4 | % 102
  a4 d8 e8 f8. e16 d8 a8 | % 103
  g4 d4 g4 d4 | % 104
  g8 c8 d8 e8 e8. d16 c8 a8 | % 105
  a4 e4 a4 e4 | % 106
  a4 d8 e8 f8. e16 d8 a8 | % 107
  g4 d4 g4 d4 | % 108
  c'4 r4 c,4 d8 e8 | % 109
  f4 c'4 e,4 g4 |
  bes4 d4 c4 a4 | % 111
  bes4 g4 f4 c'4 | % 112
  g4 b4 c4 c,4 | % 113
  f4 c'4 e,4 g4 | % 114
  bes4 d4 c4 a4 | % 115
  bes4 g4 f4 c'4 | % 116
  g4 c4 f,2 | % 117
  \key a \major \time 3/4 | % 117
  e2. \p | % 118
  gis2. | % 119
  fis2. |
  gis2. | % 121
  fis2. | % 122
  eis4 eis2 | % 123
  fis2. | % 124
  gis2. | % 125
  e'2. \mp | % 126
  e2. | % 127
  d2. | % 128
  b2. | % 129
  a4 b4 cis4 |
  cis4 d4 e4 | % 131
  d4 e4 fis4 | % 132
  gis8 a8 b4 cis4 | % 133
  <b, e>2. | % 134
  <a d>2. | % 135
  \key c \major \time 6/8 a4. a4. | % 136
  b4. b4. | % 137
  a4. b4. | % 138
  <d, a'>2. | % 139
  <cis a'>2. \fermata |
  cis2. \fermata \bar "|."
}

PartPSevenVoiceOne =  \relative e' {% Voix 7, original Marimba main droite, now Cello
  \global \clef "treble" \key g \major r2.| % 2
  R2.*5 |%7
  g4. f4.|%8
  e4. e4. |%9
  R2.*6 |%15
  g4. f4.|%16
  e4. e4. |%17
  R2.*2 | % 19
  R2. |
  R2. | % 21
  R2. | % 22
  R2. | % 23
  r4.  e8 \mp \< g8 b8 \!  | % 24
  R2.*3 | % 27
  <b, e>8 \mf \> <e g>8  <g b>8 <e g>8 \mp \< <g b>8 <b e>8 | % 28
  <e g>8 \! \mf \> <b e>8 <g b>8 <fis cis'>8 <cis ais'>8 <ais fis'>8 | % 29
  <b e>8 \! \mp \< <e g>8 <g b>8 <e g>8 <g b>8 <b e>8 \mf |


  \tuplet 3/2 {
    e,,16 g16 b16
  }
  \tuplet 3/2  {
    e16 g16 b16
  }
  \tuplet 3/2  {
    e16 g16 b16
  }
  \tuplet 3/2  {
    e16 b16 g16
  }
  \tuplet 3/2  {
    b16 g16 e16
  }
  \tuplet 3/2  {
    b16 g16 e16
  }
  | % 31
  e8 <g b>8 <fis ais>8 <g b>4 g8 | % 32
  <d g d'>4 cis'8 <c, f c'>4 gis'8 | % 33
  <c, e c'>8. b'16 ais8 <ais, cis>4 g'8 | % 34
  \time 3/8  e4 e8 | % 35
  \time 6/8  e'4 c8 e4 c8 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  e8. c16 a8 dis,4 c8 | % 38
  \time 3/4  | % 38
  R2.*4 | % 42
  R2.*3 | % 45
  \time 2/4  R2 | % 46
  \time 4/4  <g' b>8 \mp \< <g b>8 <g b>8 <g b>8 \mf
  <g b>8 <g b>8 <fis ais>8 <g b>8 | % 47
  <gis c>4 <g b>8 <fis ais>8 <g b>4 <e g>4 | % 48
  <e a>4 <e a>8 <dis gis>8 <e a>4 <a, c>4 | % 49
  <g b>8 r8 <b e>8 <e g>8 <fis ais>2 |
  <g b>8 <g b>8 <g b>8 <g b>8 <g b>8 <g b>8 <fis ais>8 <g b>8 | % 51
  <ais d>4 <a c>8 <g b>8 <a c>4 <c, f>4 | % 52
  <gis' c>4 <g b>8 <fis ais>8 <g b>4 <b, e>4 | % 53
  <e g>2 <b dis>2 | % 54
  \time 3/4  | % 54
  <c c'>2. \mp | % 55
  <c c'>2. | % 56
  <e e'>2 <e, e'>4 | % 57
  <e e'>4 <d d'>2 | % 58
  <es es'>2 ~ ~ <es es'>4 | % 59
  <bes' bes'>4 ~ ~ <bes bes'>2 |
  <a a'>2. | % 61
  R2. | % 62
  R2.*3 | % 65
  \time 2/4  R2 | % 66
  \time 4/4  <c' e>8 \<  <c e>8 <c e>8 \mf <c
  e>8 <c e>8 <c e>8 <b dis>8 <c e>8 | % 67
  <cis f>4 <c e>8 <b dis>8 <c e>4 <a c>4 | % 68
  <a d>4 <a d>8 <gis cis>8 <a d>4 <d, f>4 | % 69
  <c e>8 r8 <e a>8 <a c>8 <b dis>2 |
  <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <b dis>8 <c e>8 | % 71
  <dis g>4 <cis f>8 <c e>8 <cis f>4 <f, ais>4 | % 72
  <cis' f>4 <c e>8 <b dis>8 <c e>4 <e, a>4 | % 73
  <gis c>2 <b, e>4 e16 d16 c16 b16 | % 74
  \key as \major \time 3/2 | % 74
  R1.*2  | % 76
  R1.*4 |
  R1.*4 | % 84
  R1.*4 | % 88
  R1.*4 | % 92
  \key f \major \time 2/4 | % 92
  R2 | % 93
  \time 4/4  | % 93
  c4. \mf \< -"accel."  c16 c16 c4 c4 \ff| % 94
  d4. e16 f16 c4 f,4 | % 95
  bes4. c16 bes16 a8 c8 e8 f8 | % 96
  g4. f16 e16 d8 c8 g'16 f16 e16 d16 | % 97
  c4. c16 c16 c4 c4 | % 98
  d4. e16 f16 c4 f,4 | % 99
  bes4. c16 bes16 a8 c8 e8 f8 |
  g4 f16 e16 d16 e16 f4 r4 | % 101
  r8 e16 e16 e8 e8 e8 e8 f8 g8 | % 102
  f8. e16 d8 a8 r8 a8 r8 a8 | % 103
  r8 d16 d16 d8 d8 d8 d8 e8 f8 | % 104
  e8. d16 c8 g8 g16 a16 b16 c16 d16 e16 f16 g16 | % 105
  r8 e16 e16 e8 e8 e8 e8 f8 g8 | % 106
  f8. e16 d8 a8 r8 a8 r8 a8 | % 107
  r8 b16 b16 b8 b8 b8 b8 g'16 f16 e16 d16 | % 108
  e16 d16 c16 bes16 a16 g16 f16 e16 f16 g16 a16 bes16 a16 g16 f16 g16
  | % 109
  c4 r8 c16 c16 c4 c4 |
  d4 r8 e16 f16 c4 f,4 | % 111
  bes4 r8 c16 bes16 a8 c8 e8 f8 | % 112
  g4. f16 e16 d8 c8 g'16 f16 e16 d16 | % 113
  c4 r8 c16 c16 c4 c4 | % 114
  d4 r8 e16 f16 c4 f,4 | % 115
  bes4 r8 c16 bes16 a8 c8 e8 f8 | % 116
  g8 r8 e4 f2 | % 117
  \key a \major \time 3/4 | % 117
  a,4 \p b4 cis4 | % 118
  cis4 b4 a4 | % 119
  gis4 a4 b4 |
  a4 gis4 fis4 | % 121
  <d a'>2. | % 122
  <cis eis>2. | % 123
  <d gis>2 fis4 | % 124
  <gis, cis>2. | % 125
  <a cis e>2. \mp | % 126
  <gis a cis e>2. | % 127
  <fis a cis d>2. | % 128
  <b e a>2. | % 129
  <d e a>2. \mf |
  <e gis a cis>2. | % 131
  <gis d'>2. | % 132
  gis8 a8 b4 cis4 | % 133
  d4 e2 | % 134
  <a, d fis>4 <b e gis>2 | % 135
  \key c \major \time 6/8 a8. c16 b8 a4 e'8 | % 136
  d4. <g, b>4. | % 137
  a8. c16 b8 g4 bes8 | % 138
  <d, a'>4. <d a'>4. | % 139
  <cis a'>4. <cis a'>4. \fermata |
  e2. \fermata \bar "|."
}

PartPEightVoiceOne =  \relative e {% Voix 8, original Marimba main gauche, now Piano Main Gauche
  \global \clef "bass" \key g \major r2.| % 2
  e4. e4. | % 3
  e4. e4. | % 4
  e4. ais4 b,8 | % 5
  e4 g8 b4 b,8 | % 6
  e4. e4. | % 7
  <d g bes d>4. <c f as c>4. | % 8
  <c e a c>4. <cis e fis cis'>4. | % 9
  e4 g8 b4 b,8 |
  e4 g8 b4 b,8 | % 11
  e4 g8 c4 b,8 | % 12
  e4 g8 c,4 g'8 | % 13
  e4 g8 b4 b,8 | % 14
  e4 g8 b4 g8 | % 15
  <bes, d g bes d>4. <as c f as c>4. | % 16
  <a c e a c>4. <fis cis' e fis cis'>4. | % 17
  e'4 g8 b4 b,8 | % 18
  e4 g8 fis4 b,8 | % 19
  <b e>4. e4. |
  <b e>4. e4. | % 21
  <b e>4. e4. | % 22
  <b fis'>4. fis'4 b,8 | % 23
  e8 g8 b8 r8 r4 | % 24
  g16 d'16 bes'4 fis,16 c'16 gis'4 | % 25
  a,16 e'16 c'4 fis,,16 cis'16 a'4 | % 26
  e8 e,8 g8 b4. | % 27
  R2.*7 | % 34
  \time 3/8  R4. | % 35
  \time 6/8  R2.*3 | % 38
  \time 3/4  <e, g e'>2. | % 39
  <g b f'>2. |
  <e g e'>2. | % 41
  <g b f'>2 a16 b16 a32 b32 c32 d32 | % 42
  <e, e'>8 <d d'>8 <f f'>4 <d d'>4 | % 43
  <e e'>8 <d d'>8 <f f'>4 <d d'>4 | % 44
  <e e'>8 <d d'>8 <f f'>4 <e e'>4 | % 45
  \time 2/4  <c c'>4 <d d'>4 | % 46
  \time 4/4  R1*8 | % 54
  \time 3/4  R2.*7 | % 61
  g8 f8 c'8 a8 <g d'>4 | % 62
  <e e'>8 <d d'>8 <f f'>4 <d d'>4 | % 63
  <e e'>8 <d d'>8 <f f'>4 <d d'>4 | % 64
  <e e'>8 <d d'>8 <f f'>4 <e e'>4 | % 65
  \time 2/4  <c c'>4 <d d'>4 | % 66
  \time 4/4  R1*8 | % 74
  \key as \major \time 3/2 f4 c4 as'4 c,4 as'4 c,4 |%75
  f4 c4 as'4 c,4 as'4 c,4 | % 76
  f4 c4 as'4 c,4 as'4 c,4 | % 77
  f4 c4 as'4 c,4 as'4 c,4 | % 78
  des'4 as4 f'4 as,4 f'4 as,4 | % 79
  des4 as4 f'4 as,4 f'4 as,4 |
  f4 c4 as'4 c,4 f4 c4 | % 81
  as'4 c,4 f4 c4 as'4 c,4 | % 82
  des'4 as4 f'4 as,4 des4 as4 | % 83
  f'4 as,4 des4 as4 f'4 as,4 | % 84
  b4 fis4 d'4 fis,4 b4 fis4 | % 85
  d'4 fis,4 b4 fis4 d'4 fis,4 | % 86
  c'4 g4 es'4 g,4 c4 g4 | % 87
  es'4 g,4 c4 g4 es'4 g,4 | % 88
  <as des f>1. | % 89
  <b d fis gis>1. |
  <as des f>1. | % 91
  <fis gis b d>1. | % 92
  \key f \major \time 2/4 <f f'>2 | % 93
  \time 4/4  R1*24 | % 117
  \key a \major \time 3/4 R2.*18 | % 135
  \key c \major \time 6/8 R2.*6 \bar "|."
}

PartPSevenVoiceTwo =  \relative e {% Voix 7, original Marimba main droite, now Piano Main droite
  \global \clef "bass" \key g \major r2.| % 2
  R2.*17 | % 19
  R2. |
  R2. | % 21
  R2. | % 22
  R2. | % 23
  r4.  e8 \mp \< g8 b8 \!  | % 24
  R2.*3 | % 27
  <b, e>8 \mf \> <e g>8  <g b>8 <e g>8 \mp \< <g b>8 <b e>8 | % 28
  <e g>8 \! \mf \> <b e>8 <g b>8 <fis cis'>8 <cis ais'>8 <ais fis'>8 | % 29
  <b e>8 \! \mp \< <e g>8 <g b>8 <e g>8 <g b>8 <b e>8 \mf |


  \tuplet 3/2 {
    e,,16 g16 b16
  }
  \tuplet 3/2  {
    e16 g16 b16
  }
  \tuplet 3/2  {
    e16 g16 b16
  }
  \tuplet 3/2  {
    e16 b16 g16
  }
  \tuplet 3/2  {
    b16 g16 e16
  }
  \tuplet 3/2  {
    b16 g16 e16
  }
  | % 31
  e8 <g b>8 <fis ais>8 <g b>4 g8 | % 32
  <d g d'>4 cis'8 <c, f c'>4 gis'8 | % 33
  <c, e c'>8. b'16 ais8 <ais, cis>4 g'8 | % 34
  \time 3/8  e4 e8 | % 35
  \time 6/8  e'4 c8 e4 c8 | % 36
  f4 -"accel." e8 dis4 dis8 | % 37
  e8. c16 a8 dis,4 c8 | % 38
  \time 3/4  | % 38
  R2.*4 | % 42
  R2.*3 | % 45
  \time 2/4  R2 | % 46
  \time 4/4  <g' b>8 \mp \< <g b>8 <g b>8 <g b>8 \mf
  <g b>8 <g b>8 <fis ais>8 <g b>8 | % 47
  <gis c>4 <g b>8 <fis ais>8 <g b>4 <e g>4 | % 48
  <e a>4 <e a>8 <dis gis>8 <e a>4 <a, c>4 | % 49
  <g b>8 r8 <b e>8 <e g>8 <fis ais>2 |
  <g b>8 <g b>8 <g b>8 <g b>8 <g b>8 <g b>8 <fis ais>8 <g b>8 | % 51
  <ais d>4 <a c>8 <g b>8 <a c>4 <c, f>4 | % 52
  <gis' c>4 <g b>8 <fis ais>8 <g b>4 <b, e>4 | % 53
  <e g>2 <b dis>2 | % 54
  \time 3/4  | % 54
  <c c'>2. \mp | % 55
  <c c'>2. | % 56
  <e e'>2 <e, e'>4 | % 57
  <e e'>4 <d d'>2 | % 58
  <es es'>2 ~ ~ <es es'>4 | % 59
  <bes' bes'>4 ~ ~ <bes bes'>2 |
  <a a'>2. | % 61
  R2. | % 62
  R2.*3 | % 65
  \time 2/4  R2 | % 66
  \time 4/4  <c' e>8 \<  <c e>8 <c e>8 \mf <c
  e>8 <c e>8 <c e>8 <b dis>8 <c e>8 | % 67
  <cis f>4 <c e>8 <b dis>8 <c e>4 <a c>4 | % 68
  <a d>4 <a d>8 <gis cis>8 <a d>4 <d, f>4 | % 69
  <c e>8 r8 <e a>8 <a c>8 <b dis>2 |
  <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <b dis>8 <c e>8 | % 71
  <dis g>4 <cis f>8 <c e>8 <cis f>4 <f, ais>4 | % 72
  <cis' f>4 <c e>8 <b dis>8 <c e>4 <e, a>4 | % 73
  <gis c>2 <b, e>4 e16 d16 c16 b16 | % 74
  \key as \major \time 3/2 | % 74
  R1.*2  | % 76
  R1.*4 |
  R1.*4 | % 84
  R1.*4 | % 88
  R1.*4 | % 92
  \key f \major \time 2/4 | % 92
  R2 | % 93
  \time 4/4  | % 93
  c'4. \mf \< -"accel."  c16 c16 c4 c4 \ff| % 94
  d4. e16 f16 c4 f,4 | % 95
  bes4. c16 bes16 a8 c8 e8 f8 | % 96
  g4. f16 e16 d8 c8 g'16 f16 e16 d16 | % 97
  c4. c16 c16 c4 c4 | % 98
  d4. e16 f16 c4 f,4 | % 99
  bes4. c16 bes16 a8 c8 e8 f8 |
  g4 f16 e16 d16 e16 f4 r4 | % 101
  r8 e16 e16 e8 e8 e8 e8 f8 g8 | % 102
  f8. e16 d8 a8 r8 a8 r8 a8 | % 103
  r8 d16 d16 d8 d8 d8 d8 e8 f8 | % 104
  e8. d16 c8 g8 g16 a16 b16 c16 d16 e16 f16 g16 | % 105
  r8 e16 e16 e8 e8 e8 e8 f8 g8 | % 106
  f8. e16 d8 a8 r8 a8 r8 a8 | % 107
  r8 b16 b16 b8 b8 b8 b8 g'16 f16 e16 d16 | % 108
  e16 d16 c16 bes16 a16 g16 f16 e16 f16 g16 a16 bes16 a16 g16 f16 g16
  | % 109
  c4 r8 c16 c16 c4 c4 |
  d4 r8 e16 f16 c4 f,4 | % 111
  bes4 r8 c16 bes16 a8 c8 e8 f8 | % 112
  g4. f16 e16 d8 c8 g'16 f16 e16 d16 | % 113
  c4 r8 c16 c16 c4 c4 | % 114
  d4 r8 e16 f16 c4 f,4 | % 115
  bes4 r8 c16 bes16 a8 c8 e8 f8 | % 116
  g8 r8 e4 f2 | % 117
  \key a \major \time 3/4 | % 117
  a,4 \p b4 cis4 | % 118
  cis4 b4 a4 | % 119
  gis4 a4 b4 |
  a4 gis4 fis4 | % 121
  <d a'>2. | % 122
  <cis eis>2. | % 123
  <d gis>2 fis4 | % 124
  <gis, cis>2. | % 125
  <a cis e>2. \mp | % 126
  <gis a cis e>2. | % 127
  <fis a cis d>2. | % 128
  <b e a>2. | % 129
  <d e a>2. \mf |
  <e gis a cis>2. | % 131
  <gis d'>2. | % 132
  gis8 a8 b4 cis4 | % 133
  d4 e2 | % 134
  <a, d fis>4 <b e gis>2 | % 135
  \key c \major \time 6/8 a8. c16 b8 a4 e'8 | % 136
  d4. <g, b>4. | % 137
  a8. c16 b8 g4 bes8 | % 138
  <d, a'>4. <d a'>4. | % 139
  <cis a'>4. <cis a'>4. \fermata |
  <a cis e a>2. \fermata \bar "|."
}

PartPEightVoiceTwo =  \relative e {% Voix 8, original Marimba main gauche, now Basse
  \global \clef "bass" \key g \major r2.| % 2
  e4. e4. | % 3
  e4. e4. | % 4
  e4. ais4 b,8 | % 5
  e4 g8 b4 b,8 | % 6
  e4. e4. | % 7
  d4. c4. | % 8
  c4. cis4. | % 9
  e4 g8 b4 b,8 |
  e4 g8 b4 b,8 | % 11
  e4 g8 c4 b,8 | % 12
  e4 g8 c,4 g'8 | % 13
  e4 g8 b4 b,8 | % 14
  e4 g8 b4 g8 | % 15
  d4. c4. | % 16
  c4. cis4. | % 17
  e4 g8 b4 b,8 | % 18
  e4 g8 fis4 b,8 | % 19
  b4. e4. |
  b4. e4. | % 21
  b4. e4. | % 22
  b4. fis'4 b,8 | % 23
  e8 g8 b8 r8 r4 | % 24
  g,16 d'16 bes'4 fis,16 c'16 gis'4 | % 25
  a,16 e'16 c'4 fis,,16 cis'16 a'4 | % 26
  e8 e,8 g8 b4. | % 27
  R2.*7 | % 34
  \time 3/8  R4. | % 35
  \time 6/8  R2.*3 | % 38
  \time 3/4  e,2. | % 39
  g2. |
  e2. | % 41
  g2 a16 b16 a32 b32 c32 d32 | % 42
  e8 d8 f4 d4 | % 43
  e8 d8 f4 d4 | % 44
  e8 d8 f4 e4 | % 45
  \time 2/4  c4 d4 | % 46
  \time 4/4  R1*8 | % 54
  \time 3/4  R2.*7 | % 61
  g8 f8 c'8 a8 <g d'>4 | % 62
  e8 d8 f4 d4 | % 63
  e8 d8 f4 d4 | % 64
  e8 d8 f4 e4 | % 65
  \time 2/4  c4 d4 | % 66
  \time 4/4  R1*8 | % 74
  \key as \major \time 3/2 f4 c4 as'4 c,4 as'4 c,4 |%75
  f4 c4 as'4 c,4 as'4 c,4 | % 76
  f4 c4 as'4 c,4 as'4 c,4 | % 77
  f4 c4 as'4 c,4 as'4 c,4 | % 78
  des'4 as4 f'4 as,4 f'4 as,4 | % 79
  des4 as4 f'4 as,4 f'4 as,4 |
  f4 c4 as'4 c,4 f4 c4 | % 81
  as'4 c,4 f4 c4 as'4 c,4 | % 82
  des'4 as4 f'4 as,4 des4 as4 | % 83
  f'4 as,4 des4 as4 f'4 as,4 | % 84
  b4 fis4 d'4 fis,4 b4 fis4 | % 85
  d'4 fis,4 b4 fis4 d'4 fis,4 | % 86
  c'4 g4 es'4 g,4 c4 g4 | % 87
  es'4 g,4 c4 g4 es'4 g,4 | % 88
  des1. | % 89
  d1. |%90
  f1. | % 91
  b1. | % 92
  \key f \major \time 2/4 f2 | % 93
  \time 4/4  | % 93
  f4 \f c'4 e,4 g4 | % 94
  bes4 d4 c4 a4 | % 95
  bes4 g4 f4 c'4 | % 96
  g4 b4 c4 c,4 | % 97
  f4 c'4 e,4 g4 | % 98
  bes4 d4 c4 a4 | % 99
  bes4 g4 f4 c'4 |
  g4 c4 f,4 f'4 | % 101
  a,4 e4 a4 e4 | % 102
  a4 d8 e8 f8. e16 d8 a8 | % 103
  g4 d4 g4 d4 | % 104
  g8 c8 d8 e8 e8. d16 c8 a8 | % 105
  a4 e4 a4 e4 | % 106
  a4 d8 e8 f8. e16 d8 a8 | % 107
  g4 d4 g4 d4 | % 108
  c'4 r4 c,4 d8 e8 | % 109
  f4 c'4 e,4 g4 |
  bes4 d4 c4 a4 | % 111
  bes4 g4 f4 c'4 | % 112
  g4 b4 c4 c,4 | % 113
  f4 c'4 e,4 g4 | % 114
  bes4 d4 c4 a4 | % 115
  bes4 g4 f4 c'4 | % 116
  g4 c4 f,2 | % 117
  \key a \major \time 3/4 | % 117
  e,2. \p | % 118
  e2. | % 119
  fis2. |
  gis2. | % 121
  fis2. | % 122
  eis4 eis2 | % 123
  fis2. | % 124
  gis2. | % 125
  a2. \mp | % 126
  gis2. | % 127
  fis2. | % 128
  e2. | % 129
  a4 b4 cis4 |
  cis4 d4 e4 | % 131
  d4 e4 fis4 | % 132
  gis8 a8 b4 cis4 | % 133
  b,2. | % 134
  a2. | % 135
  \key c \major \time 6/8 a4. a4. | % 136
  b4. b4. | % 137
  a4. b4. | % 138
  d,2. | % 139
  cis2. \fermata |
  a2. \fermata \bar "|."
}


% Parties séparées
violinIPart = \new Staff \with {
  instrumentName = "Violon I"
  shortInstrumentName = "Viol. I"
  midiInstrument = "violin"
}<<
  \new Voice {\PartPFiveVoiceOne}
  \new Voice {\track}
  >>

violinIIPart = \new Staff \with {
  instrumentName = "Violon II"
  shortInstrumentName = "Viol. II"
  midiInstrument = "violin"
} \PartPSixVoiceOne

celloPart = \new Staff \with {
  instrumentName = "Violoncelle"
  shortInstrumentName = "Cello"
  midiInstrument = "cello"
} { \clef bass \PartPSevenVoiceOne}

bassPart = \new Staff \with {
  midiInstrument = "contrabass"
  instrumentName = "Basse"
  shortInstrumentName = "B."
} { \clef "bass_8" \PartPEightVoiceTwo}

flutePart = \new Staff \with {
  instrumentName = "Flûte"
  midiInstrument = "flute"
  shortInstrumentName = "Fl."
} \PartPOneVoiceOne

clarinetPart = \new Staff \with {
  instrumentName = "Clarinette"
  midiInstrument = "clarinet"
  shortInstrumentName = "Clar."
} \transpose bes c'{\transposition bes \PartPTwoVoiceOne}

altoSaxPart = \new Staff \with {
  instrumentName = "Saxophone Alto"
  midiInstrument = "alto sax"
  shortInstrumentName = "S.Alt."
} \transpose ees c' {\transposition ees \PartPThreeVoiceOne}

trumpetBbPart = \new Staff \with {
  instrumentName = "Trompette Sib"
  midiInstrument = "trumpet"
  shortInstrumentName = "Trp."
} \transpose bes c'{ \transposition bes \PartPThreeVoiceTwo}

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pn."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \PartPSevenVoiceTwo
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \PartPEightVoiceOne }
>>

% Conducteur
\book {
  \bookOutputName "pdf/Score"
  \score {
    <<

      \new StaffGroup <<
        \flutePart
        \clarinetPart
        \altoSaxPart
        \trumpetBbPart
      >>
      \pianoPart
      \new StaffGroup <<
        \violinIPart
        \violinIIPart
        \celloPart
        \bassPart
        >>

    >>
    \layout { }
    \midi { }
  }
}

% Parties séparées
\include "GenSepPart.ly"
