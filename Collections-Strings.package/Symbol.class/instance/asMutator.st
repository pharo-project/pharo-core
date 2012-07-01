converting
asMutator
	"Return a setter message from a getter message. For example,
	#name asMutator returns #name:"
	^ (self copyWith: $:) asSymbol