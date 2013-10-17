testRemoteTempInVector

	| newCompiledMethod originalCompiledMethod |


	(Smalltalk hasClassNamed: #Compiler) ifFalse: [^self skip].
	
	"Here the problem was that the Scope kept both the remote temp answer and the new remote <?> this caused
	that the number of temps were more than the correnct"
	
	newCompiledMethod := OpalCompiler new 
											source: 'value
													    | answer |
 													   self do:
       														 [:each |
        															answer := each value].
   													 ^answer';
											class: Object;
											compile.

	originalCompiledMethod := (Smalltalk classNamed: #Compiler) new 
												source: 'value
													    | answer |
 													   self do:
       														 [:each |
        															answer := each value].
   													 ^answer';
											class: Object;
											compile.
							
	self assert: newCompiledMethod numArgs = originalCompiledMethod numArgs.
	self assert: newCompiledMethod numLiterals = originalCompiledMethod numLiterals.
	self assert: newCompiledMethod numTemps = originalCompiledMethod numTemps.
	self assert: newCompiledMethod primitive = originalCompiledMethod primitive.
	self assert: newCompiledMethod header = originalCompiledMethod header