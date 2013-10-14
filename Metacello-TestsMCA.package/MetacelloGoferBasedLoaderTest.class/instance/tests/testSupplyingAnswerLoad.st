testSupplyingAnswerLoad

	| project version wc |
	project := self project.
	version := project version: '1.1'.
	self deny: postloadAnswer = 'postload answer'.
	version load.
	self assert: postloadAnswer = 'postload answer'.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.1').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-jf.1').
