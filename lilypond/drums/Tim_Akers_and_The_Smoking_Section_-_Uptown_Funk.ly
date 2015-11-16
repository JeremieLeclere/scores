\version "2.18.0"

%
%   Uptown Funk by Tim Akers & The Smoking Section
%   https://www.youtube.com/watch?v=QRuM2rk2miQ
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
hh_line             = \drummode { hh8[ hh] hh[ hh] hh[ hh] hh[ hh]         }
hh_half             = \drummode { hh8[ hhho] hh[ hhho] hh[ hhho] hh[ hhho] }
hh_line_acc         = \drummode { hh8[ hh] hh->[ hh] hh[ hh] hh->[ hh]     }
hh_line_rest        = \drummode { s8 hh hh[ hh] hh[ hh] hh[ hh]            }
hh_line_crash_one   = \drummode { cymc8[ hh] hh[ hh] hh[ hh] hh[ hh]       }
hh_line_crash_seven = \drummode { hh8[ hh] hh[ hh] hh[ hh] cymc->[ hh]     }
hh_line_one         = \drummode { hhho8[ hh] hh[ hh] hh[ hh] hh[ hh]       }
hh_line_two         = \drummode { hh8[ hhho] hh[ hh] hh[ hh] hh[ hh]       }
hh_line_three       = \drummode { hh8[ hh] hhho[ hh] hh[ hh] hh[ hh]       }
hh_line_four        = \drummode { hh8[ hh] hh[ hhho] hh[ hh] hh[ hh]       }
hh_line_five        = \drummode { hh8[ hh] hh[ hh] hhho[ hh] hh[ hh]       }
hh_line_six         = \drummode { hh8[ hh] hh[ hh] hh[ hhho] hh[ hh]       }
hh_line_seven       = \drummode { hh8[ hh] hh[ hh] hh[ hh] hhho[ hh]       }
hh_line_eight       = \drummode { hh8[ hh] hh[ hh] hh[ hh] hh[ hhho]       }
% "- Upper lines"
bd_line             = \drummode { bd8[ bd] bd[ bd] bd[ bd] bd[ bd]         }
poum_tchac          = \drummode { bd4 sn bd sn                             }
% "- Text indications"
repeat_three        = \mark \markup {\fontsize #-2 {x3}         }
repeat_four         = \mark \markup {\fontsize #-2 {x4}         }
repeat_seven        = \mark \markup {\fontsize #-2 {x7}         }
repeat_fifteen      = \mark \markup {\fontsize #-2 {x15}        }
text_couplet_un     = \mark \markup {\fontsize #-2 {Couplet 1}  }
text_couplet_deux   = \mark \markup {\fontsize #-2 {Couplet 2}  }
text_hallelujah     = \mark \markup {\fontsize #-2 {Hallelujah} }
text_refrain        = \mark \markup {\fontsize #-2 {Refrain}    }
text_thriller       = \mark \markup {\fontsize #-2 {Thriller}   }
text_b_one          = \mark \markup {\fontsize #-2 {B1}         }
text_b_two          = \mark \markup {\fontsize #-2 {B2}         }
text_b_three        = \mark \markup {\fontsize #-2 {B3}         }
text_b_four         = \mark \markup {\fontsize #-2 {B4}         }

% "====== Score split sections ======"
intro_up = \drummode {
    crashcymbal4-> r8 crashcymbal-> r4 crashcymbal->
    r8 crashcymbal-> s4 s s
    s4 s s s
    \hh_line_crash_one
    \repeat volta 2 { \hh_line_eight \hh_line }
    hh8[ hh] hh[ hh] crashcymbal8.-> crashcymbal16-> s8 crashcymbal->
    s4 \repeat unfold 3 { hh8[ hh]}
    hh8[ hh] hh8[ hh] hh8[ hhho] sn4->
}

intro_down = \drummode {
    bd4^choke r8 bd r4 bd
    r8 bd r4 bd bd
    bd8 \times 2/3 { ridebell16 ridebell bd } \times 4/6 { toml toml bd toml tomh bd } sn4 r
    bd4 sn8. bd16 bd4 sn8 bd]
    \repeat volta 2 { bd8. bd 16 sn4 bd8. bd16 sn8 bd | r4 sn8. bd16 bd4 sn8 bd }
    bd8. bd16 sn8. ss16 bd8 ss16 bd r ss bd8
    r4 bd r bd
    r4 bd r s
}

couplet_un_up = \drummode {
    \text_couplet_un
    \repeat volta 7 { \hh_line_acc }
    \repeat_seven
    crashcymbal4 s s sn16 sn8.
    \repeat volta 3 { \hh_line_three \hh_line }
    \repeat_three
    \hh_line
    sn16 sn bd8 bd sn16 sn bd8 bd sn16 sn8.
}

couplet_un_down = \drummode {
    \repeat volta 7 { s1 }
    <sn bd>4 r r s
    \repeat volta 3 { bd4 r sn r | bd8. bd16 r8 bd sn4 r }
    bd r sn r
    s1
}

hallelujah_un_up = \drummode {
    \text_hallelujah
    cymc8->[ hh] hh[ hh] hh[ hh] cymc8->[ hh]
    \repeat volta 3 { \hh_line_crash_seven \repeat_three }
    \repeat volta 3 {\repeat unfold 6 { <hh sn>8 } <hh sn>8 \repeat_three <hh sn>8 }
    sn4 r r sn16 sn8.
}

hallelujah_un_down = \drummode {
    <sn bd>4 bd bd <sn bd>
    \repeat volta 3 { bd4 bd bd <bd sn> }
    \repeat volta 3 { bd4\< bd bd bd }
    bd4\! s2.
}

refrain_un_up = \drummode {
    \text_refrain
    \repeat volta 3 { \hh_line_eight \hh_line }
    \hh_line_eight
    \repeat unfold 3 { hh8[ hh] } sn16 sn8.
    \repeat unfold 3 { hh8[ hh] } sn16 sn8.
    hh8[ hh] hh[ hh] hh[ sn16 sn] sn sn8.
    hh8[ hh] hh[ hh] hh[ sn16 sn] sn sn sn sn
    s1
}

refrain_un_down = \drummode {
    \repeat volta 3 { bd4 sn bd8. bd16 sn8 bd | r4 sn8. bd16 bd4 sn8 ss16 \repeat_three ss }
    bd4 sn bd8. bd16 sn8 bd r4 sn bd s
    \repeat unfold 3 { \repeat unfold 4 { bd4 } }
    \repeat unfold 4 { \acciaccatura sn8 sn bd }
}

couplet_deux_up = \drummode {
    s2. <sn crashcymbal>4
    \repeat volta 2 {
        crashcymbal8[ hh] hh[ hhho] hh[ hh] hh[ hh]
        \hh_line_three
    }
    \alternative {
        { hh8[ hh] hh[ hhho] hh[ hh] hh[ hh16 ss] }
        { hh8[ hh] hh[ hhho] hh[ hh] hh[ hh16 bd] }
    }
    sn4 r r \acciaccatura sn8 sn4
    \repeat volta 3 { \hh_line \hh_line }
    \hh_line
    sn16 <hhho bd>8. \times 2/3 { ss16 ss ss } sn <hhho bd> r8 \times 2/3 { ss16 ss ss } sn16 <hhho bd>8.
}

couplet_deux_down = \drummode  {
    \text_couplet_deux
    \acciaccatura sn8 sn4 r r8 \times 2/3 {r16 bd bd} s4
    \repeat volta 2 { bd4 r sn r | bd r8 bd sn4 r }
    \alternative {
        { bd8.-> bd16-> r8 bd-> sn4 s }
        { bd4 r8 bd sn4 bd }
    }
    s1
    \repeat volta 3 { bd4 sn8 bd r4 sn | bd8. bd16 sn8 bd r4 sn4 \repeat_three }
    bd4 sn8 bd r4 sn
    s1
}

hallelujah_deux_up = \drummode {
    \text_hallelujah
    \repeat volta 4 { \hh_line_crash_seven }
    \repeat_four
    \repeat volta 4 { \repeat unfold 6 { <hh sn>8 } <hh sn>8 \repeat_three <hh sn>8 }
    \repeat_three
    sn16 bd8 bd16 bd8 bd bd bd16 bd sn sn8.
}

hallelujah_deux_down = \drummode {
    \repeat volta 4 { bd4 bd bd <bd sn> }
    \repeat volta 4 { bd4\< bd bd <bd sn>\! }
    s1
}

thriller_up = \drummode {
    \repeat percent 7 { crashcymbal4 } sn16 sn8.
}

thriller_down = \drummode {
    <bd sn>4 s \text_thriller s s
    s1
}

refrain_deux_up = \drummode {
    \text_refrain
    \repeat volta 3 { \hh_line \hh_line \repeat_three }
    \hh_line_eight
    \repeat unfold 3 { hh8[ hh] } sn16 sn8.
    hh8[ hh] hh[ hhho] s4 sn16 sn8.
    hh8[ hh] hh[ hhho] s8 sn16[ sn] sn sn8.
    hh8[ hh] hh[ hhho] s4 sn16 sn8.
    hh8[ hh] hh[ hhho] ss16 <hhho bd>8. sn16 sn8.
}

refrain_deux_down = \drummode {
    \repeat volta 3 {
        bd4 sn bd8. bd16 sn8 bd
        r4 sn bd sn8. bd16
    }
    bd4 sn bd8. bd16 sn8 bd
    r4 sn bd s
    bd8.-> bd16-> sn8 bd-> r4 s
    bd8.-> bd16-> sn8 bd-> r8 s s4
    bd8.-> bd16-> sn8 bd-> r4 s
    bd8.-> bd16-> sn8 bd-> s4 s
}

b_one_up = \drummode {
    \text_b_one
    \repeat volta 15 { \hh_line \repeat_fifteen }
    \repeat unfold 3 { hh8[ hh] } hh[ hh16 hhho]
}

b_one_down = \drummode {
    \repeat volta 15 {
        bd4 bd bd bd
    }
    \repeat unfold 3 { bd4 } sn8. bd16
}

b_two_up = \drummode {
    \text_b_two
    \hh_line_rest
    \hh_line_two
    \hh_line
    hh8[ hh] hh[ hh16 hhho] s hhho8[ hhho16] r8 hh16[ hhho]
    \hh_line_rest
    \hh_line_two
    hh8[ hh] hh[ hh] hh[ ridebell] bd32[ bd sn16 bd bd]
    ss16[ <cymc bd>8.] <cymc bd>8[ ss16 <cymc bd>] r16 ss[ <cymc bd>8] r8 sn->
}

b_two_down = \drummode {
    r8 bd sn4 r sn8. bd16
    r8 bd sn4 r sn16 bd8.
    bd8. bd16 sn4 r sn
    r16 bd8 bd16 sn8. bd16 r16 bd8 bd16 sn8. bd16
    r8 bd sn4 r sn8. bd16
    r8 bd sn4 r sn16 bd8.
    bd8. bd16 sn4 s s
    s1
}

b_three_up = \drummode {
    \text_b_three
    \repeat volta 7 { hh8[ hhho] hh[ hhho] hh[ hhho] hh[ \repeat_seven hhho] }
    hh8[ hhho] hh[ hhho] hh4 sn16 <cymc bd>8.
    \repeat volta 7 { \hh_half \repeat_seven }
    hh8[ hhho] hh[ hhho] hh[ hh] sn16 <cymc bd>8.
    \repeat volta 7 { \hh_half \repeat_seven }
    hhho4 hhho hhho sn16 <cymc bd>8.
}

b_three_down = \drummode {
    \repeat volta 7 { \poum_tchac }
    bd4 sn bd8 sn s4
    \repeat volta 7 { \poum_tchac }
    bd8[ bd] sn[ bd] sn[ bd16 sn] s4
    \repeat volta 7 { \poum_tchac }
    sn8[ bd] sn8[ bd] sn8[ bd16 sn] s4
}

b_four_up = \drummode {
    \text_b_four

    \repeat volta 3 { hh8[ hhho] hh[ hhho] hh[ hhho] hh[ \repeat_three hhho] }
    hh8[ hhho] hh8[ hhho] hh8[ hh16 ss] sn <crashcymbal bd>8.

    \repeat volta 3 { \hh_half \repeat_three}
    hhho4 hhho hhho sn16 <crashcymbal bd>8.

    \repeat volta 3 { \hh_half \repeat_three}
    hh8 hh bd16[ hh hh bd] hh[ hh bd ss] sn <crashcymbal bd>8.

    \repeat volta 3 { hh8[ hhho] hh[ hhho] hh[ hhho] hh[ \repeat_three hhho] }

    hhho4 hhho sn16 <crashcymbal bd>8. hhho hhho16
    s8 hhho s sn8 <crashcymbal bd>[ ss16 <crashcymbal bd>] s8 <crashcymbal bd>
    <hhho sn>8[ ss16 <crashcymbal bd>] s8 <crashcymbal bd>8
}

b_four_down = \drummode {
    \repeat volta 7 { \poum_tchac }
    bd4 sn bd s

    \repeat volta 7 { \poum_tchac }
    sn8[ bd] sn[ bd] sn[ bd16 sn] s4

    \repeat volta 7 { \poum_tchac }
    bd16 bd8 sn16 s4 s s

    \repeat volta 7 { \poum_tchac }

    sn8[ bd] sn8[ bd16 ss] s4 bd8. bd16
    r8 bd r s s4 r8 s
    s4 r8 s r4 r
    \bar "||"
}

% "====== Score up & down sections ======"
line_up = \drummode {
    \intro_up
    \couplet_un_up
    \hallelujah_un_up
    \refrain_un_up
    \couplet_deux_up
    \hallelujah_deux_up
    \thriller_up
    \refrain_deux_up
    \b_one_up
    \b_two_up
    \b_three_up
    \b_four_up
}

line_down = \drummode {
    \intro_down
    \couplet_un_down
    \hallelujah_un_down
    \refrain_un_down
    \couplet_deux_down
    \hallelujah_deux_down
    \thriller_down
    \refrain_deux_down
    \b_one_down
    \b_two_down
    \b_three_down
    \b_four_down
}


% "====== Full Score======"

\header {
    title = "Uptown Funk"
    composer = "Tim Ayers & The Smoking Section"
}

\score {
<< \new DrumStaff \with { instrumentName = #"Drums" } <<

    \times 4/4
    \set DrumStaff.drumStyleTable = #(alist->hash-table custom_notes)

    \new DrumVoice { \voiceOne \line_up }
    \new DrumVoice { \voiceTwo \line_down }

>> >>
}
