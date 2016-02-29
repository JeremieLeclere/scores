\version "2.18.0"

%
%   Gone Under by Snarky Puppy (feat. Shayna Steele)
%   https://www.youtube.com/watch?v=gsGHkUeTc_w
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

% "- Text indications"
tag_crazy        = \mark \markup {\fontsize #-2 {Get crazy !} }

% "====== Score split sections ======"
intro_up = \drummode {
	\compressFullBarRests

	R1*4
	R1*8
	R1*6

	s1
	\acciaccatura { sn8 } sn4 hhho hhho hhho
}

intro_down = \drummode {
	\compressFullBarRests

	s1*4
	s1*8
	s1*6

	r4 r r8 bd bd[ bd]
	s4 bd bd bd8.[ bd16]
}

refrain_one_up = \drummode {
	\repeat volta 4 {
		hh16[ hhho8.] cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	}
	\alternative {
		{ hh16[ hhho8.] cymc8[ hh] hh[ hh] hh[ hhho] }
	}
}

refrain_one_down = \drummode {
	\repeat volta 4 {
		sn16[ bd8.] sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	}
	\alternative {
		{ sn16[ bd8.] sn8.[ bd16] sn8[ bd] sn8.[ bd16] }
	}
}

couplet_one_up = \drummode {
	\repeat volta 4 {
		hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
		hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
	}
	\alternative {
		{
			hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
			hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
		}
		{
			hh[ hh8] hh8[ hh] hh4 s
			s4 hhho hhho hhho
		}
	}
}

couplet_one_down = \drummode {
	\repeat volta 4 {
		bd4 bd bd bd
		bd4 bd bd bd
	}
	\alternative {
		{
			bd4 bd bd bd
			bd4 bd bd bd8[ lowtom]
		}
		{
			bd4 bd8[ sn] bd \times 2/3 { sn16 sn tomh } \times 2/3 { tomh lowtom lowtom } bd16[ bd]
			\acciaccatura { sn8 } sn16[ bd8.] bd4 bd bd
		}
	}
}

refrain_two_up = \drummode {
	\repeat volta 4 {
		hh16[ hhho8.] cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	}
	\alternative {
		{ hh16[ hhho8.] cymc8[ hh] hh[ hh] hh[ hhho] }
		{ hh16[ hhho8.] cymc4 s s }
	}
	\repeat volta 4 {
		hh16[ hhho8.] cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	}
	\alternative {
		{ hh16[ hhho8.] cymc8[ hh] hh[ hh] hh[ hhho] }
		{ hh16[ hhho8.] cymc8[ hh] hh[ hh] s4 }
	}
}

refrain_two_down = \drummode {
	\repeat volta 4 {
		sn16[ bd8.] sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	}
	\alternative {
		{ sn16[ bd8.] sn8.[ bd16] sn8[ bd] sn8.[ bd16] }
		{ sn16[ bd8.] sn8[ sn16 tomh] lowtom[ lowtom lowtom bd] sn[ tomh lowtom8] }
	}
	\repeat volta 4 {
		sn16[ bd8.] sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	}
	\alternative {
		{ sn16[ bd8.] sn8.[ bd16] sn8[ bd] sn8.[ bd16] }
		{ sn16[ bd8.] sn8.[ bd16] sn8[ bd16 sidestick] sn[ tomh lowtom bd] }
	}
}

bridge_one_up = \drummode {
	\repeat volta 2 {
		\time 4/4
		cymc8[ hhho] hhho[ hhho] hh16[ hh hhho8] hhho[ hhho]
		hh16[ hh hhho8] hhho[ hhho] hh16[ hh hhho8] hhho[ hhho]
		hh16[ hh hhho8] hhho[ hhho] hh16[ hh hhho8] hhho[ hhho]
	}
	\alternative {
		{
			\time 3/8
			hhho8[ hhho hhho]
		}
		{
			\time 3/8
			hhho4.
		}
	}
	hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
	hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
	hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hhho4
	s4 lowtom16[ lowtom lowtom8] \acciaccatura { sn8 } sn4 r4
}

bridge_one_down = \drummode {
	\repeat volta 2 {
		\time 4/4
		sn8[ bd] sn4 sn8[ bd] sn4
		sn8[ bd] sn4 sn8[ bd] sn4
		sn8[ bd] sn4 sn8[ bd] sn4
	}
	\alternative {
		{
			\time 3/8
			sn8[ bd sn]
		}
		{
			\time 3/8
			sn8[ bd16 sn sn8]
		}
	}
	\time 4/4
	bd4 bd bd bd
	bd4 bd bd bd
	bd4 bd bd bd8[ sn]
	bd16[ tomh tomh8] bd4 s4 s4
}

couplet_two_up = \drummode {
	\repeat volta 4 {
		hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
		hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
	}
	\alternative {
		{
			hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
			hh8[ hh] hh[hh16 hh] r16 hh[ hh8] hh8[ hh]
		}
		{
			hh[ hh8] hh8[ hh] hhho4 s
			hhho4 hhho hhho hhho
		}
	}
}

couplet_two_down = \drummode {
	\repeat volta 4 {
		bd4 bd bd bd
		bd4 bd bd bd
	}
	\alternative {
		{
			bd4 bd bd bd
			bd4 bd bd bd8[ lowtom]
		}
		{
			bd4 bd bd r
			r4 bd bd bd
		}
	}
}

refrain_three_up = \drummode {
	\repeat volta 4 {
		hh16[ hhho8.] cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	}
	\alternative {
		{ hh16[ hhho8.] cymc8[ hh] hh[ hh] hh[ hhho] }
		{ hh16[ hhho8.] cymc8[ hh] hh[ hh] hhho4 }
	}
}

refrain_three_down = \drummode {
	\repeat volta 4 {
		sn16[ bd8.] sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	}
	\alternative {
		{ sn16[ bd8.] sn8.[ bd16] sn8[ bd] sn8.[ bd16] }
		{ sn16[ bd8.] sn8.[ bd16] sn8[ bd] sn4 }
	}
}

bridge_two_up = \drummode {
	\compressFullBarRests
	\repeat volta 2 { \time 4/4 s1*3 }
	\alternative {
		{ \time 3/8 s4. }
		{ \time 3/8 s4. }
	}
	\repeat volta 6 {
		\time 4/4
		cymc8[ hhho] hhho[ hhho] hh16[ hh hhho8] hhho[ hhho]
		hh16[ hh hhho8] hhho[ hhho] hh16[ hh hhho8] hhho[ hhho]
		hh16[ hh hhho8] hhho[ hhho] hh16[ hh hhho8] hhho[ hhho]
	}
	\alternative {
		{ \time 3/8 s4. }
		{ \time 2/4 hhho4 s }
	}
}

bridge_two_down = \drummode {
	\compressFullBarRests
	\repeat volta 2 { \time 4/4 R1*3 }
	\alternative {
		{ \time 3/8 r4. }
		{ \time 3/8 sn8[ sn16 sn sn8] }
	}
	\repeat volta 6 {
		\time 4/4
		sn8[ bd] sn4 sn8[ bd] sn4
		sn8[ bd] sn4 sn8[ bd] sn4
		sn8[ bd] sn4 sn8[ bd] sn4
	}
	\alternative {
		{
			\time 3/8
			sn8[ sn16 sn sn8]
		}
		{
			\time 2/4
			sn8[ bd] \times 4/6 { sn16 sn sn sn sn sn }
		}
	}
}

refrain_four_up = \drummode {
	\time 4/4
	s4 cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	hh16[ hhho8.] cymc8[ hh] hh[ hh] hh[ hhho]

	hh16[ hhho8.] cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	hh16[ hhho8.] cymc8[ hh] hh[ hh] s4

	hh16[ hhho8.] cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	hh16[ hhho8.] cymc8[ hh] hh[ hh] hh[ hhho]

	hh16[ hhho8.] cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	hh16[ hhho8.] cymc8[ hh] hh[ hh] s4

	\tag_crazy
	\repeat volta 4 {
		hh16[ hhho8.] cymc8[ hh] hh16[ hhho8.] cymc8[ hh]
	}
	\alternative {
		{ hh16[ hhho8.] cymc8[ hh] hh[ hh] s4 }
		{ hh16[ hhho8.] cymc8[ hh] hh[ cymc] cymc16[ cymc 8.] }
	}
}

refrain_four_down = \drummode {
	\time 4/4
	\times 4/6 { sn16 sn tomh tomh lowtom bd } sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	sn16[ bd8.] sn8.[ bd16] sn8[ bd] sn8.[ bd16]

	sn16[ bd8.] sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	sn16[ bd8.] sn8.[ bd16] sn8[ bd16 sidestick] sn[ tomh lowtom bd]

	sn16[ bd8.] sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	sn16[ bd8.] sn8.[ bd16] sn8[ bd] sn8.[ bd16]

	sn16[ bd8.] sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	sn16[ bd8.] sn8.[ bd16] sn8[ bd16 sidestick] sn[ tomh lowtom bd]

	\repeat volta 4 {
		sn16[ bd8.] sn8.[ bd16] sn16[ bd8.] sn8.[ bd16]
	}
	\alternative {
		{ sn16[ bd8.] sn8.[ bd16] sn8[ bd16 sidestick] sn[ tomh lowtom bd] }
		{ sn16[ bd8.] sn8.[ bd16] sn8[ bd] bd16[ bd8.] }
	}
	\bar "||"
}

% "====== Score up & down sections ======"
line_up = \drummode {
	\intro_up
	\refrain_one_up
	\couplet_one_up
	\refrain_two_up
	\bridge_one_up
	\couplet_two_up
	\refrain_three_up
	\bridge_two_up
	\refrain_four_up
}

line_down = \drummode {
	\intro_down
	\refrain_one_down
	\couplet_one_down
	\refrain_two_down
	\bridge_one_down
	\couplet_two_down
	\refrain_three_down
	\bridge_two_down
	\refrain_four_down
}

% "====== Full Score ======"

\header {
    title = "Gone Under"
    composer = "Snarky Puppy feat. Shayna Steele"
}

\score {
<< \new DrumStaff \with { instrumentName = #"Drums" } <<

    \times 4/4
    \set DrumStaff.drumStyleTable = #(alist->hash-table custom_notes)

    \new DrumVoice { \voiceOne \line_up }
    \new DrumVoice { \voiceTwo \line_down }

>> >>
}

