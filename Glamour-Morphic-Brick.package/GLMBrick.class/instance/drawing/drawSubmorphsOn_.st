drawSubmorphsOn: aCanvas
	|  area |
	
	submorphs isEmpty ifTrue: [ ^ self ].

	area := aCanvas clipRect.
	"do smart drawing logic here"
	area width = 0 | (area height = 0) ifTrue: [ 
			"draw nothing"
			^ self ].
	
	subbricks
		do: [ :each | 
			| intersection canvas globalBounds |
			globalBounds := each isBrick
				ifTrue: [ each globalBounds ]
				ifFalse: [ each fullBounds ].
			
			intersection := area intersect: globalBounds ifNone: (0 @ 0 extent: 0 @ 0).
			canvas := aCanvas copyClipRect: intersection.
			each fullDrawOn: canvas ]