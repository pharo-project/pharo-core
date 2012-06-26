private
generateTestMethodFor: aMethod

	"generate a test method for aMethod and return the generated method"
	| class |

	class := self model classes detect: [:e | e name = (aMethod methodClass name,'Test')] ifNone: [ self createTestForClass: aMethod methodClass ].
	class
		ifNotNil:[ 
			class compile: (self generateSourceCodeForTestFrom: aMethod) classified: 'tests-',aMethod category.
			^ class >> (self buildTestSelectorFor: aMethod) asSymbol ].
	^ nil