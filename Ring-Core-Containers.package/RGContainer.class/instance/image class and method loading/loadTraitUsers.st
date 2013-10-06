loadTraitUsers
	"Set the users of a trait"
	| users traits traitNames rgTrait |
	
	traits := self traits.
	users := self classes select:[ :cls| cls hasTraitComposition ].
	users do:[ :each|
		each traitNames do:[ :tname|
			rgTrait := self traitNamed: tname.
			rgTrait notNil ifTrue: [
				rgTrait addUser: each.
				rgTrait theMetaClass addUser: each theMetaClass ] ] ]