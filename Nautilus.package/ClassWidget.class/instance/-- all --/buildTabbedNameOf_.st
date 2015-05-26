buildTabbedNameOf: anElement
			
	| tab result size |
	
	tab := '   '.
	size := self cachedHierarchy indentationFor: anElement.
	
	result := String new: (size * (tab size)) streamContents: [ :s|
		1 to: size do: [:i | s nextPutAll: tab ]].

	^ self model selectedPackage 
		ifNil: [result, anElement name]
		ifNotNil: [:package | 
			(package includesClass: anElement)
				ifTrue: [ (result, anElement name) asStringMorph ]
				ifFalse: [ (result , anElement name",' (', anElement package name,')'")asStringMorph color: self model extensionColor;yourself]]