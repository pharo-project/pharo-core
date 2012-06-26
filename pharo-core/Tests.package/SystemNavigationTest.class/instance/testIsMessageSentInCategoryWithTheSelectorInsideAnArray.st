testing
testIsMessageSentInCategoryWithTheSelectorInsideAnArray
	"self debug:#testIsMessageSentInCategoryWithTheSelectorInsideAnArray"

	5 timesRepeat: [self classFactory newClass].
	(self classFactory createdClasses asArray first: 3) do: [:class|	
		class compileSilently: 'meth ^#(a b m c)'].
	self assert: (self systemNavigationToTest isMessage: #m sentInClassCategory: self classFactory defaultCategory).
	self assert: (self systemNavigationToTest allSendersOf: #m inClassCategory: self classFactory defaultCategory) size = 3