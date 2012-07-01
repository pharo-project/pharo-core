tests - comparing
testEqualityInstanceSideMethod
   	| method1 method2 |

	method1 :=  (TestCase
			compile: 'aMethod'
			classified: nil
			notifying: nil
			trailer: CompiledMethodTrailer empty
			ifFail: [^ nil]) method.

	method2 :=  (TestCase
			compile: 'aMethod'
			classified: nil
			notifying: nil
			trailer: CompiledMethodTrailer empty
			ifFail: [^ nil]) method.

	self assert: (method1 literalAt: method1 numLiterals) ==  (method2 literalAt: method2 numLiterals).
 	self assert: method1 = method2.

