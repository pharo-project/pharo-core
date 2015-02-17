scrollBy: aPoint
	"Scroll receiver by some offset"
	| x y  |
	
	x := offset x + aPoint x.
	x := x max: 0.
	y := offset y + aPoint y.


	[y < 0] whileTrue: [ | h |
		h := layout height.
		layout extendOneLineUp 
			ifFalse: [ y :=0 ]
			ifTrue: [ y := y + (layout height - h) ].
	 ].

	aPoint y > 0 ifTrue:[
		self extendLayoutDown: y ].

	y := (y min: layout height - extent y) max: 0.

	offset := x@y.	
	self compact.
	self announceViewChanged.