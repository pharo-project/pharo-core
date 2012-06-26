*Tools-Browser
browseClassesWithNamesContaining: aString caseSensitive: caseSensitive 
	"Smalltalk browseClassesWithNamesContaining: 'eMorph' caseSensitive: true "
	"Launch a class-list list browser on all classes whose names containg aString as a substring."
	| suffix aList |
	
	suffix := caseSensitive
				ifTrue: [' (case-sensitive)']
				ifFalse: [' (use shift for case-sensitive)'].
	aList := OrderedCollection new.
	Cursor wait
		showWhile: [
			Smalltalk
				allClassesDo: [:class | (class name includesSubstring: aString caseSensitive: caseSensitive)
											ifTrue: [aList add: class name]]].
	aList size > 0
		ifTrue: [ ^ Smalltalk tools classListBrowser new
						initForClassesNamed: aList asSet asArray sort 
						title: 'Classes whose names contain ' , aString , suffix]