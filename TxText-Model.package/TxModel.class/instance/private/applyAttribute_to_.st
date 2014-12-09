applyAttribute: anAttribute to: interval 
	| start end |
	"note, end can be 'before' the start"
	start := interval start.
	end := interval end.
	start := start min: end.
	end := start max: end.
	
	start applyAttribute: anAttribute UpTo: end.
	