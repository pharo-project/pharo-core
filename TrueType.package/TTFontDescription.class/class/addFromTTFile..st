instance creations
addFromTTFile: fileName
"
	self addFromTTFile: 'C:\WINDOWS\Fonts\ARIALN.TTF'
"
	^self addFromTTStream: (FileStream readOnlyFileNamed: fileName).
