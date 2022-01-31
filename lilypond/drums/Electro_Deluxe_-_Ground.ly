\version "2.18.0"

%
%   Ground by Electro Deluxe
%   https://www.youtube.com/watch?v=97aHBdi4phk
%

% "====== Custom notations ======                                      "
% " Ticks:                                                             "
% ". ridebell used as medium tom                                       "
% ". sidestick used as snare ghost note                                "
#(define custom_notes '(
	( snare          ()          #f   0 )
	( bassdrum       ()          #f  -5 )
	( hihat          cross       #f   5 )
	( crashcymbal    cross       #f   6 )
	( hightom        ()          #f   3 )
	( lowtom         ()          #f  -3 )
	( halfopenhihat  xcircle     #f   5 )
	( sidestick      mensural    #f   0 )
	( ridebell       ()          #f   2 )
))

tag_INTRO  = \mark \markup { \rounded-box \fontsize #-2 {Intro}    }
tag_OUTRO  = \mark \markup { \rounded-box \fontsize #-2 {Outro}    }
tag_AONE   = \mark \markup { \rounded-box \fontsize #-2 {A1}       }
tag_ATWO   = \mark \markup { \rounded-box \fontsize #-2 {A2}       }
tag_ATHREE = \mark \markup { \rounded-box \fontsize #-2 {A3}       }
tag_BONE   = \mark \markup { \rounded-box \fontsize #-2 {B1}       }
tag_BTWO   = \mark \markup { \rounded-box \fontsize #-2 {B2}       }
tag_CONE   = \mark \markup { \rounded-box \fontsize #-2 {C1}       }
tag_CTWO   = \mark \markup { \rounded-box \fontsize #-2 {C2}       }
tag_EONE   = \mark \markup { \rounded-box \fontsize #-2 {E1}       }
tag_ETWO   = \mark \markup { \rounded-box \fontsize #-2 {E2}       }
tag_FONE   = \mark \markup { \rounded-box \fontsize #-2 {F1}       }
tag_FTWO   = \mark \markup { \rounded-box \fontsize #-2 {F2}       }
tag_TENOR  = \mark \markup { \rounded-box \fontsize #-2 {Tenor}    }
tag_TRB    = \mark \markup { \rounded-box \fontsize #-2 {Trombone} }
tag_RIDE   = \mark \markup { \italic      \fontsize #-2 {ride} }

% "====== Score split sections ======"
intro_up = \drummode {
	\tag_INTRO
	\repeat volta 3 {
		hhho16[ hhho hhho hhho] hhho[ hhho hhho hhho] hhho[ hhho hhho hhho] hhho[ hhho hhho hhho]
	}
	\alternative {
		{ hhho16[ hhho hhho hhho] hhho[ hhho hhho hhho] hhho[ hhho hhho hhho] hhho[ hhho hhho hhho] }
		{ hhho16[ hhho hhho hhho] hhho[ hhho hhho8] s4 s4 }

	}

	\tag_AONE
	\repeat volta 4 {
		cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
	}
	\alternative {
		{ hh8[ hh] hh[ hh] hh[ hhho] hh[ hh] }
		{ hh8[ hh] hh[ hh] sn8.[ sn16] sn8[ sn16 sn] }
	}

	\tag_BONE
	\repeat volta 2 {
		cymc8[ hh] hhho[ hh] hhho[ hh] hhho[ hh]
	}
	\alternative {
		{ hhho8[ hh] hhho[ hh] hhho[ hh] hhho[ hh] }
		{ hhho8[ hh] hhho[ hh] hhho[ hh] sn[ sn16 sn] }
	}

	\tag_ATWO
	\repeat volta 2 {
		cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
		hh8[ hh] hh[ hh] hh[ hh] hh[ hhho]
		hh8[ hh] hh[ hh] hh[ hh] hh[ hh]
	}
	\alternative {
		{ hh8[ hh] hh[ hhho] s4 s4 }
		{ hh8[ hh] hh[ hh] hh[ hhho] s4 }
	}

	\tag_BTWO
	\repeat volta 3 {
		cymc8[ hh] hhho[ hh] hhho[ hh] hhho[ hh]
	}
	\alternative {
		{ hhho8[ hh] hhho[ hh] hhho[ hh] hhho[ hh] }
	}
	\bar ":|."
	hhho8[ hh] hhho[ hh] hhho[ hh] hhho[ hh]
	hhho8[ hh] hhho[ hh] hhho[ hh] sn8[ sn16 sn]

	\tag_CONE
	\repeat volta 4 {
                cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
        }
        \alternative {
                { hh8[ hh] hh[ hh] hh[ hh] hh[ hh] }
		{ hh8[ hh] hh[ hh] sn16[ sn8 sn16] r sn[ sn8] }
        }

	\tag_ATHREE
	\repeat volta 2 {
		cymc8[ hh] hh[ hh16 hhho] hh8[ hh] hh[ hh16 hhho]
		hh8[ hh] hh[ hh16 hhho] hh8[ hh] hh[ hh16 hhho]
	}
	\alternative {
		{ hh8[ hh] hh[ hh] cymc[ cymc] s4 | \time 2/4 cymc8[ cymc] s4 \time 4/4 }
		{ hh8[ hh] hh[ hh16 hhho] hh8[ hh] hh[ hh16 hhho] | hh8[ hh] hh[ hhho] s cymc cymc[ cymc] }
	}

	\tag_TENOR
	\repeat volta 2 {
		cymc8[ hh] hh[ hh] hh[ hhho] hh[ hh]
		hh8[ hh] hh[ hh] hh[ hhho] hh[ hh]
		hh8[ hh] hh[ hh] hh[ hhho] hh[ hh]
		{ hh8[ hh] hh[ hh] hh[ hhho] hh[ hh] }
	}
	s4 s s s8 hhho
	hh4 s s s
	\tag_RIDE
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh]
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh]

	\tag_TRB
	\repeat volta 4 {
		hh8[ hh] hh[ hh] hh[ hhho] hh[ hh]
	}
	\alternative {
		{ hh8[ hh] hh[ hh] hh[ hhho] hh[ hh] }
		{ hh4 hh hh s }
	}

	\tag_ETWO
	sn4 r hh8[ hhho] \acciaccatura { sn8 } sn4
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh]
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh]
	hh8[ hh] hh[ hh] hh[ hh] hh16[ hhho8.]

	\tag_FONE
	cymc8[ hh16 hh] hhho8[ hh16 hh] hh8[ hh16 hh] hhho8[ hh16 hh]
	hh8[ hh16 hh] hhho8[ hh16 hh] hh8[ hh16 hh] hhho8[ hh16 hh]
	hh8[ hh16 hh] hhho8[ hh16 hh] hh8[ hh16 hh] hhho8[ hh16 bd]
	\acciaccatura { sn8 } sn8[ sn16 sn] sn[ sn sn sn] sn[ sn sn sn] sn[ sn sn sn]

	\tag_FTWO
	\repeat volta 2 {
		hh8[ hh] hh[ hh]  hh[ hh]  hh[ hh16 hh]
		hh8[ hh] hh[ hh]  hh[ hh]  hh[ hh16 hh]
	}
	\alternative {
		{ hh8[ hh] hh[ hh]  hh[ hh]  hh[ hh16 hh] | hh8[ hh] hh[ hh]  hh[ hh]  hh[ hh16 hh] }
		{ hh8[ hh] sn16[ sn sn sn] hh8[ hh] hh[ hh] | hh8[ hh] hh[ hh] hh[ hh] sn16[ sn hightom8] }
	}
	\repeat volta 2 {
		hh8[ hh] hh[ hh]  hh[ hh]  hh[ hh]
		hh8[ hh] hh[ hh]  hh[ hh]  hh[ hh]
	}
	\alternative {
		{ hh8[ hh] hh[ hh]  hh[ hh]  hh[ hh] | hh8[ hh] hh[ hh]  hh[ hh]  hh[ hh] }
		{ hh8[ hh] hh[ hh] hh[ hh] sn16[ sn sn sn] | hh8[ hh] hh[ hh] sn8.[ sn16] sn8[ sn16 sn] }
	}

	\tag_CTWO
	\repeat volta 2 {
		cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
		hh8[ hh] hh[ hh] hh[ hh] hh[ hh]
	}
	cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
	hh8[ hh] cymc4 cymc cymc
	cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
	hh8[ hh] hh[ hh] hh[ hh] sn16[ sn sn sn]
	\repeat volta 2 {
		cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
		hh8[ hh] hh[ hh] hh[ hh] hh[ hh]
	}
	cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh]
	cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]
	hh8[ hh] hh[ hh] hh[ hh] sn8[ sn16 sn]

	\tag_OUTRO
	cymc8[ cymc] hh[ hh] hh[ hh] hh[ hh]
	cymc8[ cymc] hh[ hh] hh[ hh] sn8[ sn16 sn]
	sn8[ bd] <cymc bd>4 r2

	\bar "||"
}

intro_down = \drummode {
	\repeat volta 6 {
		s4 bd s bd
	}
	\alternative {
		{ s4 bd s bd }
		{ s4 bd8[ bd16 sn] sn[ sn bd8] sn16[ sn sn sn] }
	}
	\repeat volta 4 {
		bd8[ bd] sn8.[ sidestick16] bd16[ sidestick bd8] sn8.[ sidestick16]
	}
	\alternative {
		{ bd16[ sidestick bd8] sn8.[ sidestick16] r16 sidestick[ bd8] sn8.[ sidestick16] }
		{ bd16[ sidestick bd8] sn8.[ bd16] s4 s }
	}
	\repeat volta 2 {
		<sn bd>4 sn sn sn
	}
	\alternative {
		{ sn4 sn sn8[ bd] sn[ bd] }
		{ sn8[ bd] sn[ bd] sn8.[ bd16] s4 }
	}
	\repeat volta 2 {
		bd8[ bd] sn8.[ sidestick16] bd16[ sidestick bd8] sn8.[ sidestick16]
		bd16[ sidestick bd8] sn8.[ sidestick16] bd8[ bd] sn8[ bd]
		bd16[ sidestick bd8] sn8.[ sidestick16] bd16[ sidestick bd8] sn8.[ sidestick16]
	}
	\alternative {
		{ bd16[ sidestick bd8] sn8[ bd] sn4 r }
		{ bd16[ sidestick bd8] sn8.[ sn16] r16 sn16[ bd8] sn8[ sn16 sn] }
	}
	\repeat volta 3 {
		<bd sn>4 sn sn sn
	}
	\alternative {
		{ sn4 sn sn8[ bd] sn[ bd] }
	}
	bd4 bd8[ bd] bd[ bd] bd[ bd]
	bd8[ bd] sn8[ bd16 bd] sn8[ bd] s4
	\repeat volta 3 {
		bd4 sn bd8[ bd] sn[ bd]
	}
	\alternative {
		{ r16 sn[ bd8] sn4 bd16[ sidestick bd8] sn4 }
		{ bd16[ sn bd bd] sn8[ bd] s4 s }
	}
	\repeat volta 2 {
		bd8[ bd] sn4 bd16[ sidestick bd8] sn4
		bd16[ sidestick bd8] sn4 r16 sidestick[ bd8] sn4
	}
	\alternative {
		{ bd16[ sidestick bd8] sn8.[ sidestick16] bd8[ bd] sn16[ sn sn8] | \time 2/4 bd8[ bd] sn[ sn16 sn] \time 4/4 }
		{ bd16[ sidestick bd8] sn8.[ sidestick16] bd8[ bd] sn8.[ bd16] | sn8[ bd] sn[ bd] sn[ bd] bd[ bd] }
	}
	\repeat volta 2 {
		bd8[ bd] sn8.[ bd16] r16 sn16[ bd8] sn4
		bd8[ bd] sn8.[ bd16] r16 sn16[ bd8] sn4
		bd8[ bd] sn8.[ bd16] r16 sn16[ bd8] sn4
	}
	\alternative {
		{ bd8[ bd] sn8.[ bd16] r16 sn16[ bd8] sn4 }
	}
	sn4 r r r8 bd | sn4 r r sn
	bd4 sn8.[ bd16] r8 bd r sn16[ sn]
	bd8[ bd16 bd] sn8.[ bd16] r8 bd sn16[ bd8.]
	\repeat volta 4 {
		bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4
	}
	\alternative {
		{ bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4 }
		{ sn8[ bd16 bd] sn8[ bd] sn8.[ bd16] sn16[ sn <hhho bd>8] }
	}
	s4 s r8 bd s4
	bd4 sn8.[ bd16] r8 bd r sn
	bd8[ bd] sn8.[ bd16] r8 bd r sn
	bd16[ sn8 bd16] sn8[ bd16 bd] r16 sn16[ bd8] sn16[ bd8.]
	bd4 r r r
	bd4 r r r
	bd4 r r r
	bd4 s2.

	\repeat volta 2 {
		bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4
		bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4
	}
	\alternative {
		{ bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4 | bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4 }
		{ bd8[ bd] s4 bd8.[ bd16] sn8.[ sn16] | bd8.[ bd16] sn16[ sn8 bd16] sn8.[ bd16] s4 }
	}
	\repeat volta 2 {
		bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4
		bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4
	}
	\alternative {
		{ bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4 | bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4 }
		{ bd8[ bd] sn8.[ sn16] bd8.[ bd16] s4 | bd8.[ bd16] sn8[ bd16 bd] s4 s }
	}

	\repeat volta 2 {
		bd4 sn bd8[ bd] sn[ bd]
		r8 bd sn8.[ bd16] r16 sn[ bd8] sn4
	}
	bd4 sn bd8[ bd] sn8.[ bd16]
	sn8[ bd] bd4 bd sn4
	bd4 sn8[ bd] sn[ bd] sn[ bd]
	sn8[ bd] sn[ bd] sn[ bd] s4
	\repeat volta 2 {
		bd4 sn8.[ bd16] sn8[ bd] sn[ bd]
		sn4 sn8[ bd] sn[ bd] sn[ bd]
	}
	bd4 sn8.[ bd16] sn8[ bd] sn[ bd]
	sn4 sn8.[ bd16] sn8[ bd] sn8.[ sn16]
	bd4 sn8.[ bd16] r16 sn[ bd8] sn8.[ bd16]
	r16 sn[ bd bd] r8 sn r16 sn[ bd8] s4

	bd8[ bd] sn8.[ bd16] r16 sn[ bd8] sn4
	bd8[ bd] sn8.[ bd16] r16 sn[ bd8] s4
}
% "====== Score up & down sections ======"
line_up = \drummode {
    \intro_up
}

line_down = \drummode {
    \intro_down
}


% "====== Full Score======"

\header {
    title = "Ground"
    composer = "Electro Deluxe"
    tagline = "Transcription by Jeremie LECLERE"
}

\score {
<< \new DrumStaff \with { instrumentName = #"Drums" } <<

    \times 4/4
    \set DrumStaff.drumStyleTable = #(alist->hash-table custom_notes)

    \new DrumVoice { \voiceOne \line_up }
    \new DrumVoice { \voiceTwo \line_down }

>> >>
}
