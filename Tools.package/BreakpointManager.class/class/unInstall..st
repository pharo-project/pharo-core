install-uninstall
unInstall: breakMethod 

	| class selector oldMethod |
	oldMethod := self installed at: breakMethod ifAbsent:[^self].
	class := breakMethod methodClass.
	selector := breakMethod selector.
	
	(class>>selector) == breakMethod ifTrue:[	
			class methodDictionary at: selector put: oldMethod].
	self installed removeKey: breakMethod