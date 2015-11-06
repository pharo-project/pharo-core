initialize

	super initialize.

	buttons := OrderedCollection new.
	canDeselectByClick := false asValueHolder.
	
	self whenCanDeselectByClickChanged: [ :aBoolean | 
		buttons do: [ :each | each canDeselectByClick: aBoolean ]].