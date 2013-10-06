ellipsizeHeight
	| h |
	h := self primGetHeight.
	h = -1 ifTrue:[ ^ h] ifFalse:[ ^ h / PANGO_SCALE]