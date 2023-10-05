 
 microtonos = \relative c'' {
 
 \mark \markup { \fontsize #2 \italic "Filipinas e Indonesia. Megapodius cumingii gilbertii" }
 \hide TimeSignature
  \time 4/4
  g32 a e' aes g'8 r8 ges,,32 aes des f e'8 r8
  \tuplet 5/4 { d,,32 e  ges  bes des } a'8\laissezVibrer \breathe 
  
  %r4  
  
  %\pitchedTrill cis,4\f  \startTrillSpan  dis 
  %\hide Stem { cis'8 _"▽" \stopTrillSpan c!_"▽" d_"▽" f _"▽" e_"▽"  d_"▽" }
 %\undo \hide Stem 
   \break
  \pitchedTrill cis,2\f   \startTrillSpan dis 
  \repeat tremolo 8 { c32\stopTrillSpan  e } \breathe
  

 % ( <c1 >
   \hide Stem { cis'8 _"▽"  c!_"▽" d_"▽" b _"▽" c_"▽"  aes_"▽"    aes_"▽"   aes_"▽"  }  
 \undo \hide Stem 

  \break
  
  \time 3/4
  a2->\p \> \glissando aeh8\! r8
  c2->\p \> \glissando ceh8\!  r8
  ees,2->\p \>  \glissando eeseh8\! r8
  
  \repeat tremolo 8 {e32\mf  g}   r4 
  
  b8\f( g4-.->)  des8( f4-.->) 
  
    \override Hairpin.circled-tip = ##t
  e,4\p\>_"rit." ( ais2--\! ) 
  
  \undo   \override Hairpin.circled-tip = ##t
  \break

  
  bes'2^"a tempo"_\p \glissando beseh8  r8 
  
  ees,2\pp \glissando eeseh8 r8
  
%%%%%
a,16->\mf r r a-.
a8-> r
a8-> a-.

% a,16-.->_ \mf  r  r  a-.  a8-.->  r    
%d-.->  . d-.    
%%%%%
%%%
% a,16-.->_ \mf  r16  r a-.  
% a8-.->
 %r8 
%d-.->    d-. r4 
%%%
  \break
  
  \time 4/4
  c,32_\ff   dis e f cis'8 r4
  cis,32 d fis gis cis8 r4
  
  
 % c16-.->_\mf c-. c-. c-. \tuplet 6/4 { c16-.-> c-. c-. c-. c-. c-.  } c32-.-> c-. c-. c-. c-. c-. c-. c-.  
  \once  \override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {
    c16\< [ c  c  c
    c  c]
  }

  \once  \override Beam.grow-direction = #LEFT
  \featherDurations 2/3
  {
    c\mf\>
    [c  c  c c c\! ]
  }

  \undo   \override Beam.grow-direction = #LEFT
  
  r4
  
  \break
 %  \omit Score.BarLine
  \time 2/4
  \tuplet 3/2 { d,32 gis ais} cis4-.-> r8. 
  

  \time 4/4
  \hide Stem
  d4_"▽"^"70% aire"^"30% son"
 % \omit Score.BarLine
  a'_"▽" \breathe e_"▽" b_"▽"
  
  e'1_"só son" \breathe e,,1\harmonic_"só aire" %\harmonics
  %  e'4 e,,2\harmonic_"só aire" %\harmonics

 % \hide
 % r2
 % \undo\hide 
 % \undo \hide Stem
  
 % << { r4 << d4 a' \flageolet >> << e a \flageolet >> << b, e'\flageolet  >>}  \\ { d,2\harmonic a4\harmonic e4\harmonic  } >>

\hide Stem
   ais'2_"▽" cis,_"▽"  
%  \omit Score.BarLine
  cis'1 _"▽"
  
  \undo \omit Score.BarLine
  \undo \hide Stem
  %<< { cis''1\flageolet } \\ { fis,,1\harmonic } >> 
  \bar "||"
  

}


