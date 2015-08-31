checkMethod: aMethod
	| messages |
	messages := aMethod messages reject: [ :each | self implementorsExists: each ].
	messages do: [ :m | result
					   addSearchString: m;
						addMethod: aMethod ]