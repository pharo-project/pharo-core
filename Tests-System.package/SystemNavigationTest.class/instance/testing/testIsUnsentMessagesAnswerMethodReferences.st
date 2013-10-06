testIsUnsentMessagesAnswerMethodReferences
	| class otherClass methReference |
	class :=self classFactory newClass.
	class compile: 'messageNeverSentInTheSystemXXXXThisIsForTest ^self messageSentFromClassXXXXThisIsForTest'.
	class compile: 'sentMessage'.
	otherClass := self classFactory newClass.
	otherClass compileSilently: 'messageSentFromClassXXXXThisIsForTest self sentMessage'.
	otherClass compileSilently: 'otherMessageNeverSentInTheSystemXXXXThisIsForTest ^self'.
	methReference := (self systemNavigationToTest unsentMessagesInCategory: self classFactory defaultCategory) anyOne.
	
	self assert: (methReference isKindOf: RGMethodDefinition) 