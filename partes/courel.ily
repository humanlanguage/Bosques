courel = \relative c'{

  \mark \markup {  \fontsize #2 \italic  "O Courel" }

  % \override TimeSignature.stencil = ##f
  %  \undo \hide Staff.TimeSignature
  \override DynamicLineSpanner.staff-padding = #3
  \textLengthOn
  \override TextScript.staff-padding = #3

  \time 4/4
  f'4.\( ees8 f4. ges,8
  a4--_( ees'4.\laissezVibrer\)) r8
  \tuplet 3/2 { ees,\< \( b' ees }
  bes'2--\> aes2\laissezVibrer\!\) \breathe  %r4

  \break
  %  \time 2/4
  d,,8\(\< g aes c
  g'2\)\laissezVibrer\!

  \tuplet 3/2 {  c,8\<\( d' 8 ees,   }
  bes'2\)\>
  % aes8(->  ges, d'1)\!
  aes8(->  ges, d'1 )
  \break

  % \time 4/4
  \repeat tremolo 8 {f32\! bes }
  \repeat tremolo 8 { e,32 bes' }
  \breathe

 % \repeat tremolo 8 {d,32 bes'}
  d,4\< 
  aes'2\mf\>
  r4\!
  %\breathe
  %\glissando bes'
  % \repeat tremolo 8 {aes,32 bes'}

  %r1
  \tuplet 5/4 {  f,16_\( a cis dis g  }

  e'8. ees16
  \tuplet 7/4 { c16 b bes f c bes ges\)   } r4

  \break
 \mark \markup { \fontsize #-1 "elegir entre compases 97-99 ó 100-103" }
  <<ais1 cis\pp^"191"  >>

  % r1


  <<aih1 dih\pp^"212"  >>

  %  r1


  <<fih,1  beh\pp^"32"  >>
  
  
  \break
  
   <<cih1 cis\pp^"354"  >>

  % r1


  <<cis1 e\pp^"432"  >>

  %  r1


  <<b1  c\pp^"227"  >>
  \break

  r4
  c g'4.
  %r8

  d8 a' g c a  e'4->( b4 )
\breathe
  e,8 g aes, g' d4. r8
  % \break

  \tuplet 3/2 { f8 des f~ } f4. r8 r4

  \break

  \repeat tremolo 8 {fis,32 a }
  \repeat tremolo 8 {cis32 f }


  %\repeat tremolo 16 {fis,32 cis' }




 
  e1^"frullato"

e1 \trill
 % \pitchedTrill
 % e1_ \startTrillSpan fis

  % e1\stopTrillSpan
  \repeat tremolo 16 {\stopTrillSpan e32 gis }
  % \repeat tremolo 16 {e32 gis }

  %   \pitchedTrill
  %  e1_ \startTrillSpan f



  % c2\startTrillSpan

  r4
  % a8\<\glissando geseh'-!\f\! r16
  \autoBeamOff
  ees,8->\f\>\glissando d'\!  r2
  \autoBeamOn
  % ees,8 d'8
  %\grace{d8 g}
  %  c2\startTrillSpand   r4\stopTrillSpand
  % cis4 \afterGrace{ d g}

  % \pageBreak
  \break
  %  \override TimeSignature.stencil = ##f
  \time 3/4
  a'4. fis8 \tuplet 3/2 {a8 fis b}

  cis2 r4

  %   \override TextSpanner.bound-details.left.text =
  %   \markup { " ʁ " }
  % d1_\startTextSpan
  %  d\stopTextSpan

%%%%
  %\override TextSpanner.bound-details.left.text =
 % \markup { " ʁ " }
  %c,2:16_\startTextSpan
 % r4\stopTextSpan
  %%%%
  
  c,2:16
  r4
  
  \acciaccatura{ des8 ges,} f'2 r4

  \break
  \hide Staff.TimeSignature
  \time 4/4
  %<< {d'2 \flageolet  d, \flageolet }  \\ { g,1\harmonic} >>

  \hide Stem



  d2\pp d,\harmonic
  %  \hide Stem
  \omit Score.BarLine
  % \override DynamicLineSpanner.staff-padding = #4
  \once \override TextSpanner.bound-details.left.text =
  \markup {"●" }
  \once  \override TextSpanner.bound-details.right.text =
  \markup { "▽" }

  a'1_\startTextSpan fis1\harmonic\stopTextSpan %d f e
  % a'1_"● ----->▽ "
  %fis1\harmonic

  \once \override TextSpanner.bound-details.left.text =
  \markup { "▽" }
  \once  \override TextSpanner.bound-details.right.text =
  \markup {"●" }
  c1\harmonic _\startTextSpan
  e''4\stopTextSpan
  a4 b,4 a4\breathe
  % c1\harmonic _"▽ ------>  ●  "
  % e''4 a4 b,4 a4
  \breathe

  %  \markup {  "▽ ------>  ● ● ● "  }
  % c1_\startTextSpan
  % e''4 a4 b,4 a4\stopTextSpan \breathe


  \undo \hide Stem
  \undo \omit Score.BarLine
  \undo \hide Staff.TimeSignature
  \time 3/4
  f'8 g, des'2

  e8 ges, c2

  \break
  % \pageTurn

  a2  \tuplet 3/2 {bes,8 des a'  }

  ees'2 r4



  d32 des c b c, cis e g~ g2
  %  \bar ".|"
  %\undo \hide Staff.TimeSignature
  \bar "||"

  %  \break
}
