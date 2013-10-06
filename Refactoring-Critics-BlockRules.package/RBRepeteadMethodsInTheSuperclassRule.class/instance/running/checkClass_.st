checkClass: aContext
	"The comparison between methods is made using the ast, this is better than comparing source code only since it does not take into account identations, extra parenthesis, etc"

	| selectedClass |
	selectedClass := aContext selectedClass.
	selectedClass
		methodsDo: [ :method | 
			| selector |
			selector := method selector.
			self 
				find: selector
				inSuperclassesOf: selectedClass
				do: [ :overriddenSuperclass |
					method ast = (overriddenSuperclass >> selector) ast
						ifTrue: [ result addClass: selectedClass selector: selector ] ] ]