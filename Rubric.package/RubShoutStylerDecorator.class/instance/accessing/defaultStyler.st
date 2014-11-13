defaultStyler
	^ ((Smalltalk at: #RubSHTextStylerST80) ifNil: [ ^nil ]) new view: self; yourself