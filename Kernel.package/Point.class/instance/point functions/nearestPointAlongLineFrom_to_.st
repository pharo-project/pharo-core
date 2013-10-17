nearestPointAlongLineFrom: p1 to: p2 
	"Note this will give points beyond the endpoints.
	Streamlined by Gerardo Richarte 11/3/97"
	| x21 y21 t x1 y1 |
	p1 x = p2 x ifTrue: [ ^ p1 x @ y ].
	p1 y = p2 y ifTrue: [ ^ x @ p1 y ].
	x1 := p1 x asFloat.
	y1 := p1 y asFloat.
	x21 := p2 x asFloat - x1.
	y21 := p2 y asFloat - y1.
	t := ((y asFloat - y1) / x21 + ((x asFloat - x1) / y21)) / (x21 / y21 + (y21 / x21)).
	^ (x1 + (t * x21)) @ (y1 + (t * y21))
	"
	| old new |
	Pen new place: 200@100; goto: (old := 500@300).
	Display reverse: (old extent: 10@10).
	[Sensor anyButtonPressed] whileFalse:
		[(new := (Sensor cursorPoint nearestPointAlongLineFrom: 200@100 to: 500@300) )
			= old ifFalse:
				[Display reverse: (old extent: 10@10).
				Display reverse: ((old := new) extent: 10@10)]]
"