definition
	"Refer to the comment in ClassDescription|definition."

	^ String streamContents: 
		[:strm |
		strm print: self.
		(self hasTraitComposition and: [self traitComposition notEmpty]) ifTrue: [
			strm
				crtab;
				nextPutAll: 'uses: ';
				print: self traitComposition ].
		strm
			crtab;
			nextPutAll: 'instanceVariableNames: ';
			store: self instanceVariablesString]