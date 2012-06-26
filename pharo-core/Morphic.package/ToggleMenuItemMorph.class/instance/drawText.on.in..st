as yet unclassified
drawText: aStringOrText on: aCanvas in: aRectangle
	"Draw the text on the canvas within the given bounds."
	
	(self enabled not and: [self theme disabledItemStyle = #inset])
		ifTrue: [|stringColor|
				stringColor := self stringColorToUse.
				aCanvas
					drawString: aStringOrText
					in: aRectangle 
					font: self fontToUse
					color: stringColor muchLighter lighter;
					drawString: aStringOrText
					in: (aRectangle translateBy: -1)
					font: self fontToUse
					color: stringColor]
		ifFalse: [aCanvas
					drawString: aStringOrText
					in: aRectangle 
					font: self fontToUse
					color: self stringColorToUse]