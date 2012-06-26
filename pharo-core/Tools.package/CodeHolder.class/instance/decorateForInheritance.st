controls
decorateForInheritance
	"Check to see if the currently-viewed method has a super send or an override, and if so, change screen feedback, unless the #decorateBrowserButtons says not to."

	| aButton |
	(aButton := self inheritanceButton) ifNil: [^ self].

	((currentCompiledMethod isKindOf: CompiledMethod) and: [self class decorateBrowserButtons])
		ifFalse: [^aButton offColor: Color transparent].

	"This table duplicates the old logic, but adds two new colors for the cases where there is a superclass definition, but this method doesn't call it."

	aButton offColor: self color