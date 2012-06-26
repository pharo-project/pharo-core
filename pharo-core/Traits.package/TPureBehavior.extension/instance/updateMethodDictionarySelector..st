traits
updateMethodDictionarySelector: aSymbol
	"A method with selector aSymbol in myself or my traitComposition has been changed.
	Do the appropriate update to my methodDict (remove or update method) and
	return all affected selectors of me so that my useres get notified."

	| modifiedSelectors descriptions |
	modifiedSelectors := IdentitySet new.
	descriptions := self hasTraitComposition
		ifTrue: [ self traitComposition methodDescriptionsForSelector: aSymbol ]
		ifFalse: [ #() ].
	descriptions do: [:methodDescription | | effectiveMethod selector |
		selector := methodDescription selector.
		(self includesLocalSelector: selector) ifFalse: [
			methodDescription isEmpty
				ifTrue: [
					self removeTraitSelector: selector.
					modifiedSelectors add: selector]
				ifFalse: [
					effectiveMethod := methodDescription effectiveMethod.
					self addTraitSelector: selector withMethod: effectiveMethod.
					modifiedSelectors add: selector]]].
	^modifiedSelectors