defaultStyler
	^ ((Smalltalk at: #SHTextStylerST80) ifNil: [ ^nil ]) new view: self; yourself