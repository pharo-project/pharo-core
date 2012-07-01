geometry
extent: aPoint
	| ft stream items item |
	super extent: aPoint.

	items := OrderedCollection with: self.
	item := self.
	
	[ item owner notNil ]
		whileTrue: [ 
			item := item owner.
			items add: item ].
	item := items detectMin: [:e | e extent x ].
	stream := ReadWriteStream with: ''.
	ft := StandardFonts defaultFont.
	initialIndex := 0.
	[ initialIndex < initialContents size and: [ (ft widthOfString: stream contents) < item extent x]]
		whileTrue: [ 
			initialIndex := initialIndex + 1.
			stream << (initialContents at: initialIndex) ].
	initialIndex := initialIndex -1.