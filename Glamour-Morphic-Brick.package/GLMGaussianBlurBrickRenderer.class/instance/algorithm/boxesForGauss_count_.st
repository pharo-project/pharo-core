boxesForGauss: sigma count: n
	"standard deviation, number of boxes"

	| wIdeal wl wu mIdeal m sizes |
	wIdeal := (12 * sigma * sigma / n + 1) sqrt.	"Ideal averaging filter width"
	wl := wIdeal floor.
	wl % 2 = 0
		ifTrue: [ wl := wl - 1 ].
	wu := wl + 2.
	mIdeal := (12 * sigma * sigma - (n * wl * wl) - (4 * n * wl) - (3 * n)) / (-4 * wl - 4).
	m := mIdeal rounded.
	sizes := OrderedCollection new: n.
	1 to: n do: [ :i | 
		sizes
			add:
				(i < m
					ifTrue: [ wl ]
					ifFalse: [ wu ]) ].
	^ sizes