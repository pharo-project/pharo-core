isScriptMethodWithScript
	"Return true if the method is tagged with <script: '...'> pragma for evaluating code"
	
    ^self numArgs isZero and: [ self pragmas anySatisfy: [:each | each keyword = #script: ]]