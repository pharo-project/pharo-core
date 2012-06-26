as yet unclassified
testMethodDuplication
	"self debug: #testMethodDuplication"
	
	<expectedFailure>
	
	|methods|
	SystemNavigation default allClasses do: [ :cls| 
		methods := cls copiedMethodsFromSuperclass.
		self assert: methods isEmpty]