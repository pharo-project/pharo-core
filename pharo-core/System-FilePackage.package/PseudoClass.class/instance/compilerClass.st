accessing
compilerClass
	^ (Smalltalk globals at: name ifAbsent: [ ^ self class compilerClass ]) compilerClass