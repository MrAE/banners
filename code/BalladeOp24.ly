%% Generated by lilypond-book
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=6\in,quote,ragged-right]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 6\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 4\in - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##t
}

\layout {
  
}


% ****************************************************************
% ly snippet:
% ****************************************************************
rhMusic = \fixed c' {
  \new Voice {
	\voiceOne
    <<
      { 
		\partial 16.
		bes8_\p( g8._\markup { \italic \small { molto legato } } 
		g16 fis4 bes4 g8. g16 fis4 g4)
	  }
      \new Voice {
        \voiceTwo
		s8. s16 s4. f4 e8 es8 d2
      }
    >> |
  }
}

lhMusic = \relative c {
      \new Voice {
        \voiceThree
		{
		\stemDown
	    e8\rest es'4_( d4 des4 c2 bes4)
		}
      }
      \new Voice {
        \voiceFour
      }
}

\score {
  \new PianoStaff <<
    \new Staff = "RH"  <<
      \key g \minor
	  \time 3/4
		^ \markup { \bold{Andante espressivo.} }
      \rhMusic
    >>
    \new Staff = "LH" <<
      \key g \minor
      \clef "bass"
	  \time 3/4
      \lhMusic
    >>
  >>
}



% ****************************************************************
% end ly snippet of Grieg Ballade Op. 24
% ****************************************************************