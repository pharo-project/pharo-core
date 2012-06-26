menus
explorerKey: aChar from: view

	"Similar to #genericMenu:..."
	| insideObject parentObject |
	currentSelection ifNotNil: [
		insideObject := self object.
		parentObject := self parentObject.
		inspector ifNil: [inspector := Smalltalk tools inspector new].
		inspector
			inspect: parentObject;
			object: insideObject.

		aChar == $i ifTrue: [^ self inspectSelection].
		aChar == $I ifTrue: [^ self exploreSelection].

		aChar == $b ifTrue:	[^ inspector browseMethodFull].
		aChar == $h ifTrue:	[^ inspector classHierarchy].
		aChar == $c ifTrue: [^ inspector copyName].
		aChar == $N ifTrue: [^ inspector browseClassRefs]].

	^ self arrowKey: aChar from: view