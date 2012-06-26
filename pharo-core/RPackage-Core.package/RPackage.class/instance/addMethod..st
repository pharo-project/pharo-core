compiled method handling
addMethod: aCompiledMethod 
	"Add the method to the receiver as a defined method if the class is  defined in it, else as an extension."

	| mthClass |
	mthClass := aCompiledMethod methodClass. 
	(self includesClass: mthClass )
		ifFalse: [mthClass isMeta
					ifTrue: [(metaclassExtensionSelectors 
								at: mthClass theNonMetaClass name  
								ifAbsentPut: [Set new]) add: aCompiledMethod selector.]
					ifFalse: [(classExtensionSelectors 
								at: mthClass name 
								ifAbsentPut: [Set new]) add: aCompiledMethod selector].
				"we added a method extension so the receiver is an extending package of the class"
				self organizer registerExtendingPackage: self forClass: mthClass]
		ifTrue: [mthClass isMeta
					ifTrue: [(metaclassDefinedSelectors 
								at: mthClass theNonMetaClass name  
								ifAbsentPut: [Set new]) add: aCompiledMethod selector]
					ifFalse: [(classDefinedSelectors 
								at: mthClass name 
								ifAbsentPut: [Set new]) add: aCompiledMethod selector]].	
	^ aCompiledMethod.