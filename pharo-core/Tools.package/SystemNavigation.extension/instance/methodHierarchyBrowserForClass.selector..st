*Tools-Browser
methodHierarchyBrowserForClass: aClass selector: sel
	"Create and schedule a message set browser on all implementors of the 
	currently selected message selector. Do nothing if no message is selected."
	"SystemNavigation default 
		methodHierarchyBrowserForClass: ParagraphEditor 
		selector: #isControlActive"
	
	| list aClassNonMeta isMeta tab |
	aClass ifNil: [^ self].
	aClass isTrait ifTrue: [^ self].
	sel ifNil: [^ self].
	aClassNonMeta := aClass theNonMetaClass.
	isMeta := aClassNonMeta ~~ aClass.
	list := OrderedCollection new.
	tab := ''.
	
	aClass allSuperclasses reverseDo:
		[:cl |
		(cl includesSelector: sel) ifTrue:
			[list addLast: ( (cl>>sel) methodReference )]].

	list addLast: ((aClass>>sel) methodReference).

	^ self browseMessageList: list name: 'Inheritance of ' , sel

