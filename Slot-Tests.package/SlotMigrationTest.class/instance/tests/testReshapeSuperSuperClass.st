testReshapeSuperSuperClass

	| supersuperclass superclass subclass |

	supersuperclass := self make: [ :builder |
		builder 
			superclass: Object;
			name: self aClassName;
			slots: #(a b).
		 ].

	self assert: supersuperclass subclasses isEmpty.
	supersuperclass layout checkIntegrity.
	
	superclass := self make: [ :builder |
		builder 
			superclass: supersuperclass;
			name: self anotherClassName.
		 ].

	self assert: supersuperclass subclasses equals: { superclass }.
	self assert: superclass subclasses isEmpty.
	superclass layout checkIntegrity.
	supersuperclass layout checkIntegrity.
	
	subclass := self make: [ :builder |
		builder 
			superclass: superclass;
			name: self yetAnotherClassName;
			slots:#(c d).
		 ].

	self assert: supersuperclass subclasses equals: { superclass }.
	self assert: superclass subclasses equals: { subclass }.
	self assert: subclass subclasses isEmpty.
	subclass layout checkIntegrity.
	superclass layout checkIntegrity.
	supersuperclass layout checkIntegrity.

	"reshape the super super class"
	supersuperclass := self make: [ :builder |
		builder 
			superclass: Object;
			name: self aClassName;
			slots: #(a b a2).
		 ].
	
	self assert: supersuperclass subclasses equals: { superclass }.
	self assert: superclass subclasses equals: { subclass }.
	self assert: subclass subclasses isEmpty.	
	subclass layout checkIntegrity.
	superclass layout checkIntegrity.
	supersuperclass layout checkIntegrity.