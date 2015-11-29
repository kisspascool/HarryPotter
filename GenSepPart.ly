%Ajouter nom des instruments sur la page 2

\book {
  \bookOutputName "pdf/Flute"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new Staff
    <<
    \set Staff.instrumentName = "Flute"
    \new Voice {\PartPOneVoiceOne}
    \new Voice {\track}
    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}

\book {
  \bookOutputName "pdf/Clarinet"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new Staff
    <<
    \set Staff.instrumentName = "Clarinet"
    \new Voice {\transpose bes c'{\transposition bes \PartPTwoVoiceOne}}
    \new Voice {\track}
    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}

\book {
  \bookOutputName "pdf/Alto Sax"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new Staff
    <<
    \set Staff.instrumentName = "Alto Sax"
    \new Voice {\transpose ees c'{\transposition ees \PartPThreeVoiceOne}}
    \new Voice {\track}
    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}


\book {
  \bookOutputName "pdf/Trumpet"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new Staff
    <<
    \set Staff.instrumentName = "Trumpet"
    \new Voice {\transpose bes c'{ \transposition bes \PartPThreeVoiceTwo}}
    \new Voice {\track}
    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}


\book {
  \bookOutputName "pdf/Violin I"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new Staff
    <<
    \set Staff.instrumentName = "Violin I"
    \new Voice {\PartPFiveVoiceOne}
    \new Voice {\track}
    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}

\book {
  \bookOutputName "pdf/Violin II"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new Staff
    <<
    \set Staff.instrumentName = "Violin II"
    \new Voice {\PartPSixVoiceOne}
    \new Voice {\track}
    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}

\book {
  \bookOutputName "pdf/Cello"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new Staff
    <<
    \set Staff.instrumentName = "Cello"
    \new Voice {\clef bass \PartPSevenVoiceTwo}
    \new Voice {\track}
    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}

\book {
  \bookOutputName "pdf/Basse"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new Staff
    <<
    \set Staff.instrumentName = "Basse"
    \new Voice {\clef "bass_8" \PartPEightVoiceTwo}
    \new Voice {\track}
    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}

\book {
  \bookOutputName "pdf/Piano"
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    <<
    \new PianoStaff
    <<
    \set PianoStaff.instrumentName = "Piano"
    \new Staff <<
      \new Voice {\track}
      \new Voice {\PartPSevenVoiceOne}
      >>
    \new Staff <<
      \new Voice {\clef "bass" \PartPEightVoiceOne}
    >>

    >>
    >>
    \layout {#(layout-set-staff-size 16)}
  }
}
