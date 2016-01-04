\version "2.18.0"

%
%   All Rise by The Northern Governors
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

% "====== Aliases ======"
% "- Lower lines"
hh_line             	= \drummode { hh8[ hh] hh[ hh] hh[ hh] hh[ hh]                  }
base_groove_intro_up	= \drummode { \hh_line                                          }
base_groove_intro_down	= \drummode { bd16 sidestick8 bd16 sn4 bd16 sidestick8 bd16 sn4 }
base_groove_up			= \drummode { hh8[ hh] hh[ hh] hh[ hh] hh[ hh16 hhho] ~ }
base_groove_down_silent	= \drummode { r8. bd16 sn4 bd16 sidestick8 bd16 sn4 }

% "- Text indications"
text_couplet        = \mark \markup {\fontsize #-2 {Couplet}    }
text_refrain        = \mark \markup {\fontsize #-2 {Refrain}    }

% "====== Score split sections ======"
intro_up = \drummode {
	\compressFullBarRests
	<sn cymc> r r r
	R1*10
	{ r16 sn sn sn r8 sn16 sn sn8:32 sn16 sn sn sn sn <bd cymc~> }

	cymc16 sidestick hhho8 hh[ hh] hh[ hh] hh[ cymc] ~
	cymc16 sidestick hhho8 hh[ hh] hh[ hh] hh[ hh16 hhho] ~

	\base_groove_intro_up
	\base_groove_intro_up
	\base_groove_intro_up
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh16 hhho] ~

	\base_groove_intro_up
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh16 hhho] ~
	\base_groove_intro_up
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh16 cymc] ~
	cymc8[ hhho] hh[ hh] hh[ hh] hh[ cymc] ~
	cymc8[ hhho] s4 hh8[ hh] s4
}

intro_down = \drummode {

	\compressFullBarRests
	s1*12

	r8 bd sn4 \acciaccatura { sn16[ sn] } bd sn8 bd16 sn8 bd
	r8 bd sn4 bd16 sn8 bd16 sn8. bd16

	r8. bd16 sn4 bd16 sidestick8 bd16 sn4
	\base_groove_intro_down
	\base_groove_intro_down
	bd16 sidestick8 bd16 sn4 \acciaccatura { sn16[ sn] } bd16 sn8 bd16 sn8. bd16

	r8. bd16 sn4 bd16 sidestick8 bd16 sn4
	bd16 sidestick8 bd16 sn4 bd16 sidestick8 bd16 sn8. bd16
	r8. bd16 sn4 bd16 sidestick8 bd16 sn8. sn16
	r8 bd sn4 bd8. bd16 sn8 sn16 bd
	r8 bd sn4 \acciaccatura { sn16[ sn] } bd16 sn8 bd16 sn8 bd
	r8 bd sn16 sn8 sn16 bd8. bd16 \acciaccatura { sn8 } sn16 sn sn <bd hhho> ~
}

couplet_un_up = \drummode {
	% 0'55
	\text_couplet
	\repeat volta 4 {
		\base_groove_intro_up
	}
	\alternative {
		{ \base_groove_up }
		% 1'10
		{ hh8[ hh] hh[ hh] hh[ hh] sn16 sn sn <bd cymc~> }
	}
	hh8[ hhho] hh[ hh] hh[ hh] hh[ cymc~]
	hh8[ hh] hh[ hh] hh[ hh] hh[ hh16 cymc~]

	hh8[ hhho] hh[ hh] hh[ hh] hh[ hh]
	\repeat volta 3 {
		{ hh[ hh] hh[ hh] hh[ hh] hh[ hh] }
	}
	\alternative {
		{ hh[ hh] hh[ hh] hh[ hh] hh[ hh] }
		% 1'36
		{ hh[ hh] hh[ hh] hh[ hh] hh[ cymc~] }
	}
	hh8[ hh] hh[ hh] hh8[ hh] \acciaccatura { sn8 } sn16 sn sn <bd hhho> ~

	\repeat volta 4 {
		\base_groove_intro_up
	}
	\alternative {
		{ \base_groove_up }
		% 1'10
		{ hh8[ hh] hh[ hh] hh[ hh] sn16 sn sn <bd cymc~> }
	}
	hh8[ hhho] hh[ hh] hh[ hh] hh[ cymc~]
	hh8[ hhho] s4 s4 \acciaccatura { sn8 } sn bd

	% 2'02
	\repeat volta 4 {
		{ cymc4-> s s s }
	}
	\alternative {
		{ s1 }
		{ s1 }
	}
	\repeat volta 4 {
		{ cymc8[ hh] hhho[ hh] hh[ hh] hhho[ hh] }
	}
	\alternative {
		{ hh8[ hh] hhho[ hh] hh[ hh] hh[ hh]  }
		{ hh8[ hh] hh[ hh] hh[ hh] sn16 sn sn <bd cymc~>  }
	}
	hh8[ hhho] hh[ hh] hh[ hh] hh[ cymc~]
	hh8[ hhho] s4 s4 \acciaccatura { sn8 } sn sidestick16 <bd cymc~>

	\repeat volta 8 { hh8[ hh] hh[ hh] hh[ hh] hh[ hh] }
	\alternative{
		{ hh8[ hh] hh[ hh] hh[ hh] hh[ hh] }
		{ hh8[ hh] hh[ hh] sn16[ sn sn sn] hightom[ hightom hightom <bd cymc>] }
	}

	% 3'23
	\repeat volta 7 { cymc8[ hh] hh[ hh] hh[ hh] hh[ hh] }
	\alternative {
		{ hh[ hh] hh[ hh] hh[ hh] hh[ hh] }
		{ hh[ hh] hh[ hh] hh[ hh] hh[ hh] }
	}

	hh[ hh] \acciaccatura { sn8 } sn16[ sn sn sn] <bd hhho> sn8 bd16 sn8 sidestick16 <bd cymc~>

	\repeat volta 4 {
		\base_groove_intro_up
	}
	\alternative {
		{ \base_groove_up }
		% 1'10
		{ hh8[ hh] hh[ hh] hh[ hh] sn16 sn sn <bd cymc~> }
	}
	hh8[ hhho] hh[ hh] hh[ hh] hh[ cymc~]

	hh8[ hh] s4 s16 hhho8 s16 hhho16 s8 hhho16
}

couplet_un_down = \drummode {
	% 0'55
	\repeat volta 4 { \base_groove_down_silent }
		\alternative {
			{ bd16 sidestick8 bd16 sn4 bd16 sidestick8 bd16 sn8. bd16 }
			% 1'10
			{ r16 sn bd sn r4 bd8.[ bd16] s4 }
		}
	r8 bd sn4 bd8. bd16 sn8 bd
	r8 bd sn4 bd16 sn8-> bd16 sn8-> sidestick16 bd

	r8 bd sn4 bd sn
	\repeat volta 3 {
		{ bd4 sn bd sn }
	}
	\alternative {
		{ bd4 sn bd sn }
		% 1'36
		{ bd4 sn bd sn8 bd }
	}
	r8 bd sn4 bd16 sn8 bd16 s4

	\repeat volta 4 { \base_groove_down_silent }
		\alternative {
			{ bd16 sidestick8 bd16 sn4 bd16 sidestick8 bd16 sn8. bd16 }
			% 1'10
			{ r16 sn bd sn r4 bd8.[ bd16] s4 }
		}
	r8 bd sn4 bd8. bd16 sn8 bd
	r8 bd sn16[ sn8 sn16] bd[ sn8 bd16] s4

	% 2'02
	\repeat volta 4 {
		{ sn16[ sidestick sidestick sn] sn[ sidestick sidestick bd] sidestick[ sn sidestick sn] sn[ sidestick sidestick bd] }
	}
	\alternative {
		{ sn16[ sidestick sidestick sn] sn[ sidestick sidestick bd] sidestick[ sn sidestick bd] sn[ sidestick sidestick bd] }
		{ sn16[ sidestick sidestick sn] sn[ sidestick sidestick bd] sn[ sn sn sn] sn[ sn sn sn] }
	}
	\repeat volta 4 {
		{ bd8.[ bd16] sn4 bd8.[ bd16] sn4 }
	}
	\alternative {
		{ bd8.[ bd16] sn4 bd8.[ bd16] sn16 bd8. }
		{ r16 sn bd sn r4 bd8.[ bd16] s4 }

	}
	r8 bd sn4 bd8. bd16 sn8 bd
	r8 bd sn16[ sn8 sn16] bd[ sn8 bd16] s4

	\repeat volta 8 {
		{ bd4 sn bd8[ bd] sn4 }
	}
	\alternative {
		{ bd4 sn bd8[ bd] sn4 }
		{ bd4 sn8. bd16 s4 s4}

	}

	% 3'23
	\repeat volta 7 { bd4 sn bd sn }
	\alternative {
		{ bd4 sn bd sn }
		{ bd4 sn8.[ sn16] bd[ sn bd8] sn8.[ sn16] }
	}

	bd8.[ bd16] s4 s4 s4

	\repeat volta 4 { \base_groove_down_silent }
		\alternative {
			{ bd16 sidestick8 bd16 sn4 bd16 sidestick8 bd16 sn8. bd16 }
			% 1'10
			{ r16 sn bd sn r4 bd8.[ bd16] s4 }
		}
	r8 bd sn4 bd8. bd16 sn8 bd

	r8 bd sn16[ sn hhho bd] sn[ bd8 sn16] bd8[ sn16 bd]
	\bar "||"
}

% "====== Score up & down sections ======"
line_up = \drummode {
	\intro_up
	\couplet_un_up
}

line_down = \drummode {
	\intro_down
	\couplet_un_down
}

% "====== Full Score ======"

\header {
    title = "All Rise"
    composer = "The Northern Governors"
}

\score {
<< \new DrumStaff \with { instrumentName = #"Drums" } <<

    \times 4/4
    \set DrumStaff.drumStyleTable = #(alist->hash-table custom_notes)

    \new DrumVoice { \voiceOne \line_up }
    \new DrumVoice { \voiceTwo \line_down }

>> >>
}
