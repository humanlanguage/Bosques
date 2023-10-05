\version "2.25.2"
\header {
  title = "Bosques"
  %subsubtitle =  "2023"
  dedication = "Para Manuel Morales"
  % instrument = "Flauta solista"
  composer = "H. Palma"
  copyright = "© 2023 H. Palma"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  % line-width = 170
  left-margin = 20
  right-margin = 20
  bottom-margin = 20
  top-margin = 20

}

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 77
}



%%%%
tonguePizz =
#(define-music-function (music) (ly:music?)
   #{
     \temporary \override NoteHead.stencil = #ly:text-interface::print
     \temporary \override NoteHead.text =
     \markup
     \translate #'(1 . 0)
     \override #'(thickness . 1.4)
     \overlay {
       \draw-line #'(-1.2 . 0.4)
       \draw-line #'(-1.2 . -0.4)
     }
     \temporary \override NoteHead.stem-attachment =
     #(lambda (grob)
        (let* ((stem (ly:grob-object grob 'stem))
               (dir (ly:grob-property stem 'direction UP))
               (is-up (eqv? dir UP)))
          (cons dir (if is-up 0 -0.8))))
     #music
     \revert NoteHead.stencil
     \revert NoteHead.text
     \revert NoteHead.stem-attachment
   #})

%%%%%%


\include "partes/introduccion.ily"
\include "partes/cracticus.ily"
\include "partes/microtonos.ily"
\include "partes/sericulusArdens.ily"
\include "partes/courel.ily"
\include "partes/alondra.ily"
\include "partes/alauda.ily"
\include "partes/baldaio.ily"


% notes code goes here
music = \relative c'' {

  \global
  \introduccion
  \pageBreak

  \cracticus
  \pageBreak

  \microtonos
  \pageBreak

  \sericulusArdens
  \pageBreak

  \courel
  \pageBreak

  \alondra
  \alauda

}

\score {
  \new Staff
  \with {
    instrumentName = "Fl"
    midiInstrument = "flute"
  }
 \music

  \layout {
    #(layout-set-staff-size 20)
    \override DynamicLineSpanner.staff-padding = #3
    \textLengthOn
    \override TextScript.staff-padding = #3
   % \override Score.NonMusicalPaperColumn #'transparent = ##t
    
  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 77 4)
    }
  }
}

