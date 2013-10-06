collectMethodsFrom: aClass til: superClass
	| methods class |

	methods := OrderedCollection new.
	class := aClass.
	methods addAll: class methods.
	
	[ class superclass = superClass ]
		whileFalse: [ 
			class := class superclass.
			methods addAll: class methods ].
	^ methods	