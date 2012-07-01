accessing
fillColor: aColorOrPattern 
	"The destForm will be filled with this color or pattern of colors.  May be an old Color, a new type Color, a Bitmap (see BitBlt comment), a Pattern, or a Form.  6/18/96 tk"
	aColorOrPattern == nil ifTrue: 
		[ halftoneForm := nil.
		^ self ].
	destForm == nil ifTrue: [ self error: 'Must set destForm first' ].
	halftoneForm := destForm bitPatternFor: aColorOrPattern