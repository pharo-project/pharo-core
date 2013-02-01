accessing
resolveType: aTypeName
	" a type name could be
	 - a class variable name
	- a class name
	- a type name 
	- a type name, followed by arbitrary number pointer chars - $*"

	| name newName resolver binding ptrArity |
	
	newName := aTypeName.
	ptrArity := 0.
	"resolve aliases and pointers"	
	[
		name := newName trimRight.  
		newName := self aliasForType: name.
		newName last = $* ifTrue: [
			ptrArity := ptrArity + 1.
			newName := newName allButLast ].
		name = newName ] whileFalse.
	
	resolver := requestor ifNil: [ self class ].
	binding := resolver nbBindingOf: name asSymbol.
	
	binding ifNotNil: [ 
		^ (binding value asNBExternalType: self) pointerArity: ptrArity ] .

	^ self error: 'Unable to resolve external type: ', aTypeName.

