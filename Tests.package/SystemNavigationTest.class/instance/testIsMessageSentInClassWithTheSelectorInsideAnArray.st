testing
testIsMessageSentInClassWithTheSelectorInsideAnArray
	"self debug: #testIsMessageSentInClassWithTheSelectorInsideAnArray"
	|class|
	class := self classFactory newClass.
	class compileSilently: 'meth ^#(a b m c)'.
	self assert: (self systemNavigationToTest isMessage: #m sentInClass: class).
	self assert: (self systemNavigationToTest allSendersOf: #m inClass: class) size = 1