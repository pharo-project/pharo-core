intersect: aRectangle ifNone: aBlock
	"Answer a Rectangle that is the area in which the receiver overlaps with 
	aRectangle. 
	If there's no overlap, evaluate the block instead 
	"
	| aPoint left right top bottom |
	(self intersects: aRectangle) ifFalse: [ ^ aBlock value ].
	 
	aPoint := aRectangle origin.
	aPoint x > origin x 
		ifTrue: [ left := aPoint x ]
		ifFalse: [ left := origin x ].
	aPoint y > origin y 
		ifTrue: [ top := aPoint y ]
		ifFalse: [ top := origin y ].
	aPoint := aRectangle corner.
	aPoint x < corner x 
		ifTrue: [ right := aPoint x ]
		ifFalse: [ right := corner x ].
	aPoint y < corner y 
		ifTrue: [ bottom := aPoint y ]
		ifFalse: [ bottom := corner y ].
	^ Rectangle 
		origin: left @ top
		corner: right @ bottom