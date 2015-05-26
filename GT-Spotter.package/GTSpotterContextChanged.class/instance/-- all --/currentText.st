currentText
	^ self current ifNil: [''] ifNotNil: [ self current text ]