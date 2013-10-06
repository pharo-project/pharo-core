drawBackgroundSketchOn: aCanvas 
	backgroundMorph
		ifNotNil: [ 
			self clipSubmorphs
				ifTrue: [ aCanvas clipBy: self clippingBounds during: [ :canvas | canvas fullDrawMorph: backgroundMorph ] ]
				ifFalse: [ aCanvas fullDrawMorph: backgroundMorph ] ]