as yet unclassified
twoToneFromDisplay: aRectangle using: oldForm backgroundColor: bgColor
	"Return a 1-bit deep ColorForm copied from the given rectangle of the display. All colors except the background color will be mapped to black."

	| f |
	((oldForm ~~ nil) and: [oldForm extent = aRectangle extent]) ifTrue: [
		f := oldForm fromDisplay: aRectangle.
	] ifFalse: [
		f := ColorForm extent: aRectangle extent depth: 1.
		f twoToneFromDisplay: aRectangle backgroundColor: bgColor.
		f colors: (Array
			with: bgColor
			with: Color black)].
	^ f
