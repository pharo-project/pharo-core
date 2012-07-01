tests
testIdentityOfAssociationLiteral

       | materializedCompiledMethod class originalMethod |       
       class := self newClass.
       class duringTestCompileSilently: 'foo FLPair name '.
     originalMethod := class >> #foo.
      
    "Since we have created the class after the analyzer, we have to manually add it. Otherwise it won't be considered as global."
       self analyzer considerGlobal: class name.
      
       materializedCompiledMethod := self materializedCompiledMethod: class >> #foo.

    self deny: materializedCompiledMethod == originalMethod.
    self assert: (materializedCompiledMethod literalAt: 2) == (Smalltalk globals associationAt: #FLPair).