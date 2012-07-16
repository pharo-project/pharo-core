as yet unclassified
testMethodDuplication
	"self debug: #testMethodDuplication"
	
	<expectedFailure>
	
	|methods|
	SystemNavigation new allClasses do: [ :cls| 
		methods := cls copiedMethodsFromSuperclass.
		self assert: methods isEmpty]