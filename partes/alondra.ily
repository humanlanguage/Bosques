
alondra = \relative c''  {

  \mark \markup { \fontsize #2 \italic  "Baldaio. Alauda arvensis" }
 \override DynamicLineSpanner.staff-padding = #3
 \textLengthOn
  \override TextScript.staff-padding = #2
  
  \time 4/4
  \override Hairpin.circled-tip = ##t
  fis,16\<( b fis' cis e2\f\laissezVibrer )

  d16-.\> bes-. aes-. f-.
  e1\breathe

  e'2\!\ff( \trill   e2:16 )
  \break

  e,8\f( c'2)

  \override Hairpin.circled-tip = ##f
  r8

  \appoggiatura bes'8   g4 ~ g2\> ~ g4\!\pp
  \autoBeamOff

  \hide Stem {
  \set fontSize = -3 
  ges16 geh
  ges geh
  %ges geh
  %ges geh
  }
  \breathe
  \set fontSize = 0
\undo  \hide Stem
  \autoBeamOn

  \break

\tuplet 5/4 { fis,16  ais  c  cis ais' } 
f'2
%f?'2 
r4



%132
\tuplet 5/4 { dis,16 e g gis c ~}  c2

e4\< ~ e2.:16\!\f r4

%%%%%%% 131
%  fis,64-.\< cis'-. cis-. cis'-. f16-.\! \breathe

%  ais,,8( dis-- cis
%  fis8 ais b a!

%  fis8  c'2--) \p e4.\< ~ e2.:16_"ʁ - - - - -"\!\f r4


%%% 131
  \break

}
