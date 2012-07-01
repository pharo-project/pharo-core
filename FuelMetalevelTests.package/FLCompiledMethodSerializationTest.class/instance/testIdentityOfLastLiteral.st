tests
testIdentityOfLastLiteral
       "When serializing a method of a global class, the materialized class binding has to be the same."

       | materializedCompiledMethod class originalMethod |        
       class := self newClass.
       class duringTestCompileSilently: 'foo '.
	 originalMethod := class >> #foo.
       
	"Since we have created the class after the analyzer, we have to manually add it. Otherwise it won't be considered as global."
       self analyzer considerGlobal: class name.
       
       materializedCompiledMethod := self materializedCompiledMethod: class >> #foo.

	self deny: materializedCompiledMethod == originalMethod.
       self assert: materializedCompiledMethod classBinding == (Smalltalk globals associationAt: class name).