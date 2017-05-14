\version "2.18.2"

upper = {
	\new Voice = "up" \relative c {
		\key f \major
		\time 4/4

		s1
		\f \times 2/3 { d'8 g a } \times 2/3 { bes a g } << a2:32 d,~ >>
		<< d4:32 g~ >> << d2:32 fis~ >> r4
		s4 \times 2/3 { c8^"rit ..." d c }
		\override Stem.direction = #UP
		\times 2/3 { d c \change Staff = "lower" a~ } a4:32~
		\revert Stem.direction
		\change Staff = "upper"
		r1
		\bar "||"
		\time 2/4 r2
		\bar "||"
		\time 4/4 \times 2/3 { d8 g a } \times 2/3 { bes a g } << a2:32 d,~ >>
		<< d4:32 g~ >> << d2:32 fis~ >> r4
		r2. << bes,4:32 d~ >>
		<< bes2:32 d~ >> << a2:32 d\fermata >>
		\time 3/4
		\repeat volta 2 { s2. s2. }
		\repeat volta 2 { s2. s2. }
		\repeat volta 2 { s2. s2. }
		\repeat volta 2 { \time 9/16 s2 s16 \time 3/4 s2. }
	}
}

lower = \relative c {
	\new Voice = "down" {
		\clef bass
		\key f \major
		\time 4/4

		\tempo 4 = 60

		s2. r8 \times 2/3 { d16 a' bes }
		r2 << fis2:32 \sfz \< a~ >>
		<< fis2.:32 \ff a \> >> r8 \times 2/3 { a,16 \mf d ees }
		a8[ bes] s2.
		g4.:32~ \> a8:32~ a8:32~ << a8:32 fis~ >> << a4:32 fis~ >>
		<< a4:32 \p fis d\fermata >> r8 \times 2/3 { d16^"A tempo" \f a' bes }

		r2 << fis2:32 \sfz \< a~ >>
		<< fis2.:32 \ff a \> >> r8 \times 2/3 { a,16 \mf d ees }
		\times 2/3 { fis8 \< g a } \times 2/3 { bes a g } \times 2/3 { bes^"rit ..." a g } << e4:32 \sfz \< g~ >>
		<< e8:32 g~ >> << d:32 g~ >> << d4:32 g~ >> << d2:32 \mf fis >>

		\tempo 4 = 80
		\override Stem.direction = #UP
		\repeat volta 2 {

			\times 2/3 { d16-> \mp a' \change Staff = "upper" d } g d
			\change Staff = "lower" bes-> \change Staff = "upper" f' d \change Staff = "lower" a->
			\change Staff = "upper" d \change Staff = "lower" a-> \change Staff = "upper" d f

			\times 2/3 { \change Staff = "lower" d,16-> a' \change Staff = "upper" d } g d
			\change Staff = "lower" bes-> \change Staff = "upper" f' d \change Staff = "lower" a->
			\change Staff = "upper" d \change Staff = "lower" a-> \change Staff = "upper" d f
		}

		\repeat volta 2 {
			\change Staff = "lower"

			\times 2/3 { d,16-> a' \change Staff = "upper" d } g d
			\change Staff = "lower" bes-> \change Staff = "upper" f' d \change Staff = "lower" << a-> d, >>
			\change Staff = "upper" d' \change Staff = "lower" a-> \change Staff = "upper" d f

			\times 2/3 { \change Staff = "lower" d,16-> a' \change Staff = "upper" d } g d
			\change Staff = "lower" bes-> \change Staff = "upper" f' d \change Staff = "lower" << a-> d, >>
			\change Staff = "upper" d' \change Staff = "lower" a-> \change Staff = "upper" d f
		}

		\repeat volta 2 {
			\change Staff = "lower"
			\times 2/3 { d,16-> \mf a' \change Staff = "upper" d } a'-> d,
			\change Staff = "lower" bes-> \change Staff = "upper" g'-> d \change Staff = "lower" a->
			\change Staff = "upper" d \change Staff = "lower" g,-> \change Staff = "upper" d' f->

			\change Staff = "lower"
			\times 2/3 { d,16-> a' \change Staff = "upper" d } a'-> d,
			\change Staff = "lower" bes-> \change Staff = "upper" g'-> d \change Staff = "lower" a->
			\change Staff = "upper" d \change Staff = "lower" g,-> \change Staff = "upper" d' f->
		}

		\repeat volta 2 {
			\time 9/16
			\change Staff = "lower"
			\times 2/3 { d,16-> a' \change Staff = "upper" d } a'-> d,
			\change Staff = "lower" bes-> \change Staff = "upper" bes'-> d, g-> a->

			\time 3/4
			\change Staff = "lower"
			\times 2/3 { d,,16-> a' \change Staff = "upper" d } a'-> d,
			\change Staff = "lower" bes-> \change Staff = "upper" g'-> d \change Staff = "lower" a->
			\change Staff = "upper" d \change Staff = "lower" g,-> \change Staff = "upper" d' f->
		}

	}
}


\header {
    title = "Dumb Left Hand"
    composer = "Jérémie Leclere"
}

\score {
	\new PianoStaff \with { instrumentName = #"Marimba" }
	<<
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>
	\layout { }
	\midi { }
}
