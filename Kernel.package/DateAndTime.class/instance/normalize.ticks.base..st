private
normalize: i ticks: ticks base: base

	| tick div quo rem |
	tick := ticks at: i.
	div := tick digitDiv: base neg: tick negative.
	quo := (div at: 1) normalize.
	rem := (div at: 2) normalize.
	rem < 0 ifTrue: [ quo := quo - 1. rem := base + rem ].
	ticks at: (i-1) put: ((ticks at: i-1) + quo).
	ticks at: i put: rem
