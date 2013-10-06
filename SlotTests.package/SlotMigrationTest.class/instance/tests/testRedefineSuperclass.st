testRedefineSuperclass
	"This case reproduces a MNU found loading Moose."

	| superclass class |
	superclass := self makeWithLayout: PointerLayout.
	class := self make: [ :builder |
		builder 
			superclass: superclass;
			layoutClass: ByteLayout;
			name: self anotherClassName.
		 ].

	self makeWithLayout: PointerLayout.

	superclass layout checkIntegrity.
	class layout checkIntegrity.