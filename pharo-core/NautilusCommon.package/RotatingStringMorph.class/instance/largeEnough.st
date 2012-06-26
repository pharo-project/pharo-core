private
largeEnough
	| items item |
	
	items := OrderedCollection new.
	item := self.
	
	[ item owner notNil ]
		whileTrue: [ 
			items add: item.
			item := item owner ].
	
	^ items allSatisfy: [:e | e extent x > (StandardFonts defaultFont widthOfString: initialContents) ]