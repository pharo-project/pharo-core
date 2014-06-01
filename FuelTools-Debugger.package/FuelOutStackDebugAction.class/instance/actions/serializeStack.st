serializeStack
	| date fileName |
	"Serialize a portion of the current stack trace using fuel.."
	date := DateAndTime now.
	
	fileName := String streamContents: [ :s|
		s 
			<< 'Debugger-Stack-';
			<< self interruptedContext receiver class theNonMetaClass name;
			<< '-'.
		date printYMDOn: s.
		s 
			<< '-'; print: date hour24; print: date minute; print: date second;
			<< '.fuel'].

	[ self class
		serializeTestFailureContext: self interruptedContext copyStack		
		toFileNamed: fileName.
		self inform: 'Stack fuelled to file: ' , fileName asFileReference fullName ] 
	on: Error 
	do: [:err| self inform: 'Stack fuelling failed ', String cr, err printString "and simply continue..." ].