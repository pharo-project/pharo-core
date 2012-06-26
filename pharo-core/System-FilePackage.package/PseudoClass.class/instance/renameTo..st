class
renameTo: aString

	self hasDefinition ifTrue:[
		self isMeta ifTrue:[
			self definition: (self definition
				copyReplaceAll: name,' class'
				with: aString, ' class').
		] ifFalse:[
			self definition: (self definition 
					copyReplaceAll:'ubclass: #',name
					with:'ubclass: #', aString)]].
	name := aString.
	metaClass ifNotNil:[metaClass renameTo: aString].