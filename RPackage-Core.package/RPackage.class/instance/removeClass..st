accessing
removeClass: aClass
	"Remove the class and all its methods from the receiver"

	"This is the line you should uncomment if you want to debug the strange problem with the test: RPackageMCSynchronisationTest>>testRecategorizeClassUnregisterTheClassMethodsFromTheOldPackage. 
	The problem came from that at this point, two methods from the class were equals (whereas they should not). For now I just modified definedMethodsForClass:  to return an OrderedCollection instead of a Set, To be sure I don't forget any method to remove"
	
	"self haltIf: [(aClass methodDict at: #method1) = (aClass methodDict at: #method2)]."
	(self definedMethodsForClass: aClass instanceSide) do: [ :aCompiledMethod |
		"(self removeDefinedMethod: aCompiledMethod forClass: aClass instanceSide)."
		self removeMethod: aCompiledMethod 
		].
	"we also have also have to remove methods from class side"
	(self definedMethodsForClass: aClass classSide) do: [ :aCompiledMethod |
		"(self removeDefinedMethod: aCompiledMethod forClass: aClass classSide)."
		self removeMethod: aCompiledMethod 
		].
	self removeClassDefinitionWithoutCheckingMethods: aClass.