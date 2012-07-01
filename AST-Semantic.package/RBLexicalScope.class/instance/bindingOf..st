querying
bindingOf: aString
	"Answer the local binding of aString or nil."
	
	^ bindings at: aString ifAbsent: [
		| binding |
		binding := (self basicBindingOf: aString) 
			ifNil: [ ^ nil ].
		self add: binding ]