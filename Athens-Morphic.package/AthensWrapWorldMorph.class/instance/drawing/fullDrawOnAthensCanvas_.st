fullDrawOnAthensCanvas: anAthensCanvas 
	"Draw the full Morphic structure on the given Canvas"

	self visible ifFalse: [^ self].
	(anAthensCanvas isVisible: self fullBounds) ifFalse: [^self].
	(self hasProperty: #errorOnDraw) ifTrue: [^self "drawErrorOn: aCanvas" ].
	"draw athens wrap morph"
	(anAthensCanvas isVisible: self bounds) ifTrue: [ anAthensCanvas draw: self ].
	"draw wrapped world and its submorphs"
	submorphs reverseDo: [:m | anAthensCanvas fullDrawMorph: m ] 