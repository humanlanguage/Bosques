baldaio = \relative c' {
    %\mark \markup { \box \italic "Baldaio" }
 << { f4^\markup{ \italic "Alauda arbensis 2-10" } } \\ \xNote {d8 c16 c} >>
  
  << { fis4 } \\ { \xNote { d16 d d d   }} >> 
  << { e4 } \\ \xNote {d8 c16 c  } >>
  
 <<  {e'8^"▽" c8^"▽"   }  \\   { \xNote {b16 g16 f16  e32 d }  }   >>
  
  \time 2/4 
  \pitchedTrill
  e'4. \startTrillSpan  fis
  r8 
  \stopTrillSpan
 % \time 2/4
  fis4\glissando  fis,^"▽"
  
  \break
  
  \time 1/4 
    
  \tuplet 5/4 { b16^"▽" cis^"▽" e^"▽" a^"▽" b^"▽"  }
  
  \time 4/4
  a,2
  \xNote{ 
  f4  e16  e e e 
  }
  
  \time 2/4 

  \repeat tremolo 4 {ees16^"▽" c^"▽" } 
  \break
  
  \time 4/4
  
  << { g''4 g   d'2 }  \\ 
    {ees,4_"▽" c_"▽" bes'2_"▽" }   >>
  
  ees,4. d8 \tuplet 3/2 {ees d ees }
\tuplet 3/2 {d ees d}

\time 2/4
b'2

\pitchedTrill
e,2 \startTrillSpan fis
%r2.
%\stopTrillSpan

\break

\time 6/8
r4. \stopTrillSpan

dis,4.
ais'

fis

\time 4/4
cis'1
\bar "||"
  
}

