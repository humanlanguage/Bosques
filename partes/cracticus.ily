
% \header {
 %   piece = \markup { \fontsize #4 \italic "Bosques de Australia" }
 % }


cracticus = \relative c'' {
  \mark \markup { \fontsize #2 \italic "Bosques de Australia. Cracticus nigrogularis" }
  \time 4/4
 
 r2 
 % \footnote #'(3 . 1/2) "XC430722 Cracticus nigrogularis" 
  e4 ( f b,2 )
  d'4( ais e'2)
  e,4 ( fis ais,2 ) 
  r4 
 ais16-! ais16-!  r16 a16-!  
  \override TextSpanner.bound-details.left.text =
   \markup { "R " }
 ais1_\startTextSpan \glissando aih\stopTextSpan \breathe
 % r4
 
  \break
 
 % \time 2/4
  \time 6/8
  a'8-> (  e' b ais-> fis'  d )
  
 % \tuplet 6/4 {a'8  e' b ais fis'  d }  
 
 
  \time 4/4
  ges,8->-!   a-! d,->-! f-! des->-! e-! 
  \tuplet 3/2 {  aes,8->( c g'   }
 % aes,16 c g' 
  d'2\laissezVibrer )  r2
 
 \break
 
   \mark \markup {  \fontsize #-2 "bisb"}
  \repeat tremolo 8 {<e,, \harmonic e''>32\ppp  <a\harmonic e''>32  }
   
  \repeat tremolo 8 {<e\harmonic e''>32  <a\harmonic e''>32  }\breathe
  
 
  
  \repeat tremolo 4 {e32 a }
  \repeat tremolo 4 {ees32 g }
  
  \repeat tremolo 4 { e32 g }
  
  r4
 % \repeat tremolo 4 { des32 ges } \breathe

  
%  \repeat tremolo 8 {<des \harmonic aes''>32\ppp  <aes'\harmonic aes'>32 }
 % \repeat tremolo 8 {<des,\harmonic aes''>32  <aes'\harmonic aes'>32  }
    \repeat tremolo 8 {<des \harmonic des''>32\ppp  <ges\harmonic des''>32 }
  \repeat tremolo 8 {<des\harmonic des''>32  <ges\harmonic des''>32  } \breathe
 % \break
  
  aes'2~ aes2:16~ aes2._"normal" bes4  d,1
  
  \break
 


  % r2.^\markup {  \italic Canto } fis4^( 
  % e'2 cis)
  r2.  fis4^( 
  e'2 cis)
  
  r4
  fis,4(
  \tuplet 3/2 { fis' e b  }
  cis2) r2 
 

  b2  d, e'  r4
  bes4
  d2
  r2
  %ges,,2
 %\breathe

\break

  a,2\(~ \tuplet 6/4 { a8 e' c g' e b' }
  
  ees,2~ \tuplet 6/4 {ees8 aes  ges  c bes f'}
  
  c2\) r8 bes8( des aes' 
  f2) r2 
  
  \bar "||"



  
}
