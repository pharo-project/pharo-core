drawOn: aCanvas 
	| baseColor |
	baseColor :=  self theme autoMenuColor
		ifTrue: [ owner color twiceDarker]
		ifFalse: [ self theme currentSettings flatMenu 
			ifFalse: [ owner color]
			ifTrue: [ owner color twiceDarker ] ].
	self theme flatMenu 
		ifFalse: [
			aCanvas
				fillRectangle: (bounds topLeft corner: bounds rightCenter)
				color: baseColor twiceDarker .
			aCanvas
				fillRectangle: (bounds leftCenter corner: bounds bottomRight)
				color: baseColor twiceLighter ]
		ifTrue: [
			aCanvas
				fillRectangle: (bounds topLeft corner: bounds bottomRight)
				color: baseColor ]