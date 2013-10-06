parseCommentDeclaration: commentPreamble
	"The comment preable is an array with the following structure:
	If instance side method:
	#(#CodeImportTestCaseTestClass #commentStamp: '<historical>' #prior: 0)
	
	if class side:
	
	#(#CodeImportTestCaseTestClass #class #commentStamp: '<historical>' #prior: 0)
	allButFirst:
	"

	| behaviorName isMeta stamp |
	behaviorName := commentPreamble first asSymbol.
	isMeta := commentPreamble second ~= #commentStamp:.
	stamp := isMeta
		ifTrue: [ commentPreamble at: 4 ]
		ifFalse: [ commentPreamble at: 3 ].
	self
		addDeclaration:
			(ClassCommentDeclaration
				contents: self nextChunk
				behaviorName: behaviorName
				isMeta: isMeta
				stamp: stamp)