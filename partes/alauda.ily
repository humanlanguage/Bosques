%%%% estilos

tsh = {
  \once \override TextSpanner.bound-details.left.text =
  \markup { " tʃ "   }
}

t = {
  \once \override TextSpanner.bound-details.left.text =
  \markup { " t "   }
}

o = {
  \once \override TextSpanner.bound-details.left.text =
  \markup { "o"   }
}

u = {
  \once \override TextSpanner.bound-details.left.text =
  \markup { "ů"   }
}

ou = {
\once \override TextSpanner.bound-details.left.text = #"o"
\once \override TextSpanner.bound-details.right.text = #"ů"
}

uu = {
 \once \override TextSpanner.bound-details.left.text = #"u"
\once \override TextSpanner.bound-details.right.text = #"ů"
}

ah = {
 \once \override TextSpanner.bound-details.left.text = #"a"
\once \override TextSpanner.bound-details.right.text = #"h"
}
%%%%%%%%%%

alauda  = \relative c' {


  \acciaccatura {f8 fis a}  aes'2 ees'\p \breathe

  \pitchedTrill
  b,2_"trino dobre" \startTrillSpan c

  \repeat tremolo 4 { des16\stopTrillSpan  bes }

  \repeat tremolo 8 {<c, \harmonic c''>32\ppp  <f\harmonic c''>32  }
  \repeat tremolo 8 {<c\harmonic c''>32  <f\harmonic c''>32  }

  \break


  f4
  \stemDown  {\autoBeamOff \tonguePizz{ d16._> d32  d16 d}}
                                       % \t d32_\startTextSpan d16 d \stopTextSpan }
  
  \autoBeamOn
  \stemUp fis4

  \stemDown  {\autoBeamOff  \tonguePizz { d16._>     d32  d16 d }}
  \break
  \autoBeamOn
%  \stemUp  \acciaccatura a'16 a2_\startTextSpan ~ a2_\markup {\italic " oů "}^"silbido"\stopTextSpan 

%%%%% 138 
%\stemDown {d2}
%  \mark \markup { \fontsize #-2   "cantar el bajo" }
%<< 

%  \stemUp { r2 a'2 ~a4^"silbido" } \\
%\stemDown {\ou d,2_\startTextSpan  ~ d ~ d4_\stopTextSpan r4 } 

%>>
 % \stemUp  \ou  a'2_\startTextSpan ~a2~ a2^"silbido" 
 
 
 % \autoBeamOff
%  \stemDown {\tonguePizz {e16.->_"tʃ " \t e32_\startTextSpan  e16 c c16 c-! c c\stopTextSpan }}
 % \autoBeamOn
 
 %%%% fin 139


      
 \relative {
<<
  {c''2. f4 ~ f2. g4 ~ g1 }
 
  \new Staff  {   \hide Stem \hide Staff.TimeSignature \clef "bass"  \o c,,,2_"voz"_\startTextSpan s4 s4_\stopTextSpan  \uu f2_\startTextSpan s4 s4_\stopTextSpan  \ah e2_\startTextSpan s4_\stopTextSpan s4 }
  
>>

}




  \break
  aes''2  ees'2 
  \breathe

 % \repeat tremolo 4 {<aes' \harmonic aes'>8\ppp  <aes\harmonic ees''>8 }
  %\repeat tremolo 8 {<aes\harmonic aes'>32  <aes\harmonic ees''>32  }

 % \repeat tremolo 8 {d,32 bes'}
  \repeat tremolo 8 { b,32 d }
  \repeat tremolo 8 { b32 d }

  
  \break

  %ees'2 
 % r2

%  \break
  

%  <<
%    {    \omit Stem c2_"cantar" c c c c1 }
%    \\
% {  \omit Stem \tiny c2 c' g ' c e  }
%  >>
%  \breathe
%  \undo \omit Stem
 % r1
 
 % c1\harmonic_"▽" ~
%  c\harmonic
\override Hairpin.minimum-length = #5
%  << \< c,,1\harmonic^"aire"  { s4 s s\> s\! } >>


\relative c' {
 % \hide Staff.TimeSignature
 % \omit Score.BarLine
  \once   \hide Stem
   c2\harmonic_"aire"   
  \omit Score.BarLine
  \stemUp {
    s4^"sonido"  
    e''4  f b,2 
    s4
  }
  \once   \hide Stem
  c,,2\harmonic
  \stemUp {
    s2
    g'''4  f8.c16 g'2 
    s2
  }
  

  \once   \hide Stem
  c,,,2\harmonic
  \stemUp {
    c''1\laissezVibrer   }
  
   \override Hairpin.minimum-length = #5
  <<  c,,1\>\harmonic  { s4 s s s\! } >>
 % { s4 s s s\! }
  \undo \omit Score.BarLine

}
  \bar "||"


}