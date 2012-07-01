rectangle functions
areasOutside: aRectangle 
	"Answer an Array of Rectangles comprising the parts of the receiver not 
	intersecting aRectangle."
	"Make sure the intersection is non-empty"
	| areas yOrigin yCorner |
	(self intersects: aRectangle) ifFalse: [ ^ Array with: self ].
	areas := OrderedCollection new.
	aRectangle origin y > origin y 
		ifTrue: 
			[ areas addLast: (origin corner: corner x @ (yOrigin := aRectangle origin y)) ]
		ifFalse: [ yOrigin := origin y ].
	aRectangle corner y < corner y 
		ifTrue: 
			[ areas addLast: (origin x @ (yCorner := aRectangle corner y) corner: corner) ]
		ifFalse: [ yCorner := corner y ].
	aRectangle origin x > origin x ifTrue: 
		[ areas addLast: (origin x @ yOrigin corner: aRectangle origin x @ yCorner) ].
	aRectangle corner x < corner x ifTrue: 
		[ areas addLast: (aRectangle corner x @ yOrigin corner: corner x @ yCorner) ].
	^ areas