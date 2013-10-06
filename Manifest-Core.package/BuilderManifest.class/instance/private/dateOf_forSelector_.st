dateOf: ringobject forSelector: aSelector

	| critics |

	critics := manifestClass perform: aSelector.
	^ ((critics detect: [:each | ((Smalltalk globals at: each first first) manifestReadOn: (each first at: 2)) = ringobject ]) at: 2) asDateAndTime
		
		