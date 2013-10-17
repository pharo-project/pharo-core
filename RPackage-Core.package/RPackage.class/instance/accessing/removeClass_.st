removeClass: aClass
	"Remove the class and all its methods from the receiver"

	(self definedMethodsForClass: aClass instanceSide) 
		do: [ :aCompiledMethod | self removeMethod: aCompiledMethod ].
	
	"we also have also have to remove methods from class side"
	(self definedMethodsForClass: aClass classSide) 
		do: [ :aCompiledMethod | self removeMethod: aCompiledMethod ].
	
	self removeClassDefinitionWithoutCheckingMethods: aClass.	
	self removeClassTagsForClassNamed: aClass name.