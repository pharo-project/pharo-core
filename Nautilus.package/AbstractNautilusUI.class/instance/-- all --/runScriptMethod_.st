runScriptMethod: aMethod
	"Perform the method as a script method"
 
	"For each <script> pragma run the method"		 
	aMethod isScriptMethod ifTrue: [ 
		aMethod pragmas 
					select: [:pragma | pragma keyword = #script ] 
					thenDo: [:pragma | aMethod methodClass baseClass perform: aMethod selector.
								 			UIManager default inform: 'Script executed: ', aMethod name asString  ]].

	"For each <script: '...'> pragma run the action code"
	aMethod isScriptMethodWithScript ifTrue: [ 
		aMethod pragmas 
					select: [:pragma | pragma keyword = #script: ]
					thenDo: [:pragma | Smalltalk compiler evaluate: pragma arguments first for: aMethod methodClass baseClass logged: false.
											UIManager default inform: 'Script with argument executed: ', aMethod name asString  ]].
	
	