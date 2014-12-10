inspectorPragmasFrom: aMethod

	^ (aMethod pragmas select: [ :each | each key beginsWith: #gtInspectorTag ]) 
		ifEmpty: [ defaultPragmaKey ifNil: [ {  } ] ifNotNil: [ { defaultPragmaKey } ] ]
		ifNotEmpty: [ :currentPragmas | currentPragmas collect: [ :each | each key ] ]