class
definition
	| link linkText defText |
	^definition ifNil:
		[defText := Text fromString: 'There is no class definition for '.
		link := TextLink new.
		linkText := link analyze: self name with: 'Definition'.
		linkText := Text string: (linkText ifNil: ['']) attribute: link.
		defText append: linkText; append: ' in this file'].