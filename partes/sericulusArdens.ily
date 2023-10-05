\version "2.25.2"

speakOn = {
  \override Stem.stencil =
    #(lambda (grob)
       (let* ((x-parent (ly:grob-parent grob X))
              (is-rest? (ly:grob? (ly:grob-object x-parent 'rest))))
         (if is-rest?
             empty-stencil
             (ly:stencil-combine-at-edge
              (ly:stem::print grob)
              Y
              (- (ly:grob-property grob 'direction))
              (grob-interpret-markup grob
                                     (markup #:center-align #:fontsize -4
                                             #:musicglyph "noteheads.s2cross"))
              -2.3))))
}

speakOff = {
  \revert Stem.stencil
  \revert Flag.stencil
}



sericulusArdens = \relative c'' {

%\hide Staff.TimeSignature
%\hide Staff.BarLine
  \override DynamicLineSpanner.staff-padding = #3
  \textLengthOn
  \override TextScript.staff-padding = #3


  \time 4/4
  \mark \markup {  \fontsize #2 \italic "Bosques de Papua. Sericulus ardens" }
  r2

  g''4--\mf( f8.c16 g'1 )
  
   \bar "||"
   


  r4
% \omit Score.BarLine
  \hide Stem

\override Hairpin.circled-tip = ##t
 \override DynamicLineSpanner.staff-padding = #4
  e,,4\pp e' g, \breathe
  eeh''1\mf \breathe
  c,,1\p\>

  \undo \hide Stem
  %\undo \omit Score.BarLine

  % \hide TimeSignature

  \break

\override Hairpin.circled-tip = ##f

  %\omit TimeSignature

  \time 3/4

 % \omit Score.BarLine
  fis'4\! \mf\>c g


  \time 4/4
  d'1 ~ d4.\! r8 d8.\< d16 \tuplet 3/2 { d8.\f\> d16 d8\!  }

  \undo \omit Score.BarLine
  \break


%\undo  \omit TimeSignature
  \time 4/4
  c,8\< e
  \tuplet 3/2 {ges8  b c}

  %\time 4/4

  g'2\f\> ~ g4 g8. g16~ g8 g16 g 

%g geh g geh\!

  g8 \glissando  geh8\! 
  \breathe
  
\undo \omit Stem
  \break

  \tuplet 3/2 {aes,16\p d b' }  ees8 eeseh4  ees2
  \acciaccatura {eeseh8 eeh eeseh } ees1

  \break

  bes16.\f\> a32 aes32 f d des c2.~
  \tuplet 3/2 {c32\! r c,_"▽" } %\hide NoteHead
  c32_"▽" c_"▽" 
   \once \override TextSpanner.bound-details.left.text =
      \markup {"●" }
 
 \once \override TextSpanner.bound-details.right.text =
    \markup { "▽" }

  c16._\startTextSpan
  c32 
  \speakOn
  c16.\harmonic\stopTextSpan c32\harmonic_"▽" c16\harmonic_"▽" c\harmonic_"▽" ~ c2\harmonic_"▽"
  %\tuplet 3/2 { f_> fes g } a
%\undo \hide NoteHead
\speakOff
  \break

\override Hairpin.circled-tip = ##t
  \tuplet 3/2 { f16\< fis b  } f'!8\! ~ f4 ( f2:16\f ) \breathe

  \tuplet 3/2 { f,16\< fis ais  } a'!8\! ~ a4( a'2\flageolet\f )
  
  \breathe




  \time 3/4
  g,2\mp f8 c8 g'2.
  \undo \hide Staff.BarLine
 \undo \hide Staff.TimeSignature
  \bar "||"





}


