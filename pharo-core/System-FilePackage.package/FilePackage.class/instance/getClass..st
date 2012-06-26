private
getClass: className
	| pseudoClass |
	(classes includesKey: className) ifTrue:[
		^classes at: className.
	].
	pseudoClass := PseudoClass new.
	pseudoClass name: className.
	classes at: className put: pseudoClass.
	^pseudoClass.