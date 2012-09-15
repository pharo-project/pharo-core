*RPackage-SystemIntegration
systemMethodRemovedActionFrom: ann

	| method methodPackage |
	method := ann methodAffected.

	"If the method origin is not the one of the event, we do not care about that method"
	method origin = ann methodClass ifFalse: [^ self].

	ann methodClass isMeta
		ifFalse: [ 
			methodPackage := self packageDefiningOrExtendingSelector: ann selector inClassNamed: ann methodClass theNonMetaClass originalName.
			methodPackage removeSelector: ann selector ofClassName: ann methodClass theNonMetaClass originalName.
		]
		ifTrue: [ 
			methodPackage := self packageDefiningOrExtendingSelector: ann selector inMetaclassNamed: ann methodClass theNonMetaClass originalName.
			methodPackage removeSelector: ann selector ofMetaclassName: ann methodClass theNonMetaClass originalName.
		]