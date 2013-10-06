fullDrawOnAthensCanvas: anAthensCanvas 
	"Draw the full Morphic structure on the given Canvas"

	self visible ifFalse: [^ self].
	(anAthensCanvas isVisible: self fullBounds) ifFalse: [^self].
	(self hasProperty: #errorOnDraw) ifTrue: [^self "drawErrorOn: aCanvas" ].

	(anAthensCanvas isVisible: self bounds) ifTrue: [ anAthensCanvas draw: self ].
	
	submorphs isEmpty ifTrue: [^self].

	self clipDuring: [
		anAthensCanvas pathTransform restoreAfter: [
			anAthensCanvas pathTransform translateBy: self transform offset negated. 
			submorphs reverseDo: [:m | anAthensCanvas fullDrawMorph: m ] ]
		] canvas: anAthensCanvas.


