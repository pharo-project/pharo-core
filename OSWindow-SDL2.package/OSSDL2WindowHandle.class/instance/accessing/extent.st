extent
	| w h |
	w := OSSDLIntValue new.
	h := OSSDLIntValue new.
	handle getSizeW: w h: h.
	^ w value @ h value