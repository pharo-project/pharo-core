compileFont: strikeFont 
	| tempName literalString header sizeStr familyName |
	tempName := 'FontTemp.sf2'.
	strikeFont writeAsStrike2named: tempName.
	literalString := (Base64MimeConverter mimeEncode: (FileStream readOnlyFileNamed: tempName) binary) contents fullPrintString.
	sizeStr := strikeFont pointSize asString.
	familyName := strikeFont name first: (strikeFont name findLast: [ :x | x isDigit not ]).
	header := 'size' , sizeStr , '
	^ self fontNamed: ''' , familyName , sizeStr , ''' fromMimeLiteral:
'.
	self class 
		compile: header , literalString
		classified: 'fonts'
		notifying: nil.
		
	(FileSystem root workingDirectory / tempName) delete.