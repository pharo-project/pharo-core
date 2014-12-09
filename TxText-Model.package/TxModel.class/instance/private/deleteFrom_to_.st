deleteFrom: startPos to: endPos
	| start end |
	"note, end can be 'before' the start"
	start := endPos min: startPos.
	end := endPos max: startPos.

	start deleteUpTo: end.