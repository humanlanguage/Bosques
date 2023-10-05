
introduccion = \relative c' {
  \override Hairpin.circled-tip = ##t
  \mark \markup { \fontsize #2 \italic "Sons do bosque" }
  dis'4\<  ais'2\f\> r4\!
  r8 b,16\p\> g
  fis'2\! r4

  r8 dis8\<
  \once  \override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {
    ais'16 [ ais  ais  ais
    ais  ais]
  }

  \once  \override Beam.grow-direction = #LEFT
  \featherDurations 2/3
  {
    ais\ff\>
    [ais  ais  ais ais ais\! ]
  }

  \undo   \override Beam.grow-direction = #LEFT

  \break


  ais1\p( ais2.) r4

<<c,1_"overblow" geh''\ff^"multf.319" >> 
  %<<dis,,1_"overblow" dih'  aih'\ff^"multif. 8"  >>
  \breathe

\override Hairpin.circled-tip = ##t
  %\mark \markup {  \fontsize #-2 \italic "jet whistle"}
  c,,,4\<\glissando
    \mark \markup {  \fontsize #-2 \italic "jet whistle"}
  \once \hide Stem
 \once \tiny   \parenthesize beseh'8-!\sf\!
  r8

  c,4\<\glissando 
    \once \hide Stem
  \once \tiny \parenthesize geseh''8-!\f\! r8


%  \override Hairpin.circled-tip = ##t
%  c,,4\<\glissando beseh'8-!\sf\!
%  r8

%  a4\<\glissando geseh'8-!\f\! r8
  
  
  \autoBeamOff

  \small {
    
    \hide Stem {
      ges\pp     \mark \markup {  \fontsize #-2 \italic "smorzato"} geh
     % \mark \markup {  \fontsize #-2 "smorzato"}
      ges geh
      ges %\breathe 
      geh 
    }
    \undo \hide Stem 
    %r8
    r4
  }
  \normalsize
  \autoBeamOn
  \break

  % \pitchedTrill a2\f (  \startTrillSpan aih  a2\stopTrillSpan )
  \trill a1

  \undo \override Hairpin.circled-tip = ##t
 % \break

<<d,1_"underblow" e'_\pp^"multf. 606">>
 % <<eeh,1_"underblow" eeh'  beh'\pp^"multif. 11"  >>


  \repeat tremolo 8 {<ees,, \harmonic ees''>32^"bisbigliando" \ppp  <aes\harmonic ees''>32 }
  \repeat tremolo 8 {<ees\harmonic ees''>32  <aes\harmonic ees''>32  }

  \break


  r2. b'4--\<\p( ges'2.-- )
  \huge aes,,8( \small des
  \normalsize
  aes''2.--\>)
  \huge g,,8( \small des'
  \normalsize
  e'2.--)     \huge ges,,8(  \small des'
  \normalsize
  c'1--\!)\ppp

  \break
  \mark \markup {  \fontsize #-2 \italic "Chamadas"}
  \appoggiatura b8-> g8\ff r8  \appoggiatura cis8-> fis8 r8

  \appoggiatura bes,8-> f8 r8  \appoggiatura d'8-> a'8 r8

  \tonguePizz {  d,,,16 r16 d}
  r16
  \acciaccatura {a''32 d }a'4 \laissezVibrer

  r16
  \tonguePizz { des,,,16-! des-! } r16
  \acciaccatura { f'32 a } e'4 \laissezVibrer

  \break
  c,,8--
  r8
  \acciaccatura {ges''32 ees'} bes'4 \laissezVibrer

  r16

  \tonguePizz c,,,16_+ \tonguePizz c_+
  r16



  r16 \xNote d16
  r16 \xNote d16


  \override NoteHead.style = #'triangle {
    d8^"TR" r 
    d  d 
    d  r
    d4 
  }
  \undo   \override NoteHead.style = #'triangle

  \break

  \appoggiatura a'' e'4._"ord." \laissezVibrer
  r8 dis4:16 r4

  c,,32\pp->( cis   c'--\laissezVibrer)  r32
  r8

  cis,32-.( d-. f-. cis'--~cis8) \laissezVibrer


  \acciaccatura g'32 d'4-> r4
  
 
  c,,1\harmonic^\markup {  \italic "whistle tones"}
  %^"whistle tones"

  \bar "||"

  %para adicion de graficos
  % http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Formatting-text#Graphic-notation-inside-markup




}
