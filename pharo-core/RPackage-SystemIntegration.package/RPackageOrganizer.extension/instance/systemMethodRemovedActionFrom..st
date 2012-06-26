*RPackage-SystemIntegration
systemMethodRemovedActionFrom: ann

	| method methodPackage |
	method := ann itemMethod.
	
	"If the method origin is not the one of the event, we do not care about that method"
	method origin = ann itemClass ifFalse: [^ self].

	ann itemClass isMeta
		ifFalse: [ 
			methodPackage := self packageDefiningOrExtendingSelector: ann itemSelector inClassNamed: ann itemClass theNonMetaClass originalName.
			methodPackage removeSelector: ann itemSelector ofClassName: ann itemClass theNonMetaClass originalName.
		]
		ifTrue: [ 
			methodPackage := self packageDefiningOrExtendingSelector: ann itemSelector inMetaclassNamed: ann itemClass theNonMetaClass originalName.
			methodPackage removeSelector: ann itemSelector ofMetaclassName: ann itemClass theNonMetaClass originalName.
		]