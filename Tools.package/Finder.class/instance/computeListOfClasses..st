private-class
computeListOfClasses: aString
	"Compute in the case I'm searching class names"
	
	| list result originalList |
	originalList := self packagesSelection.
	result := OrderedCollection new.
	
	'Scanning'
		displayProgressFrom: 0 to: originalList size
			during: [:bar |  	
				self useRegEx
					ifTrue: [ originalList doWithIndex: [:each :i | 
							bar current: i.
							(each name substrings anySatisfy: [:sub | sub matchesRegexIgnoringCase: aString])
								ifTrue: [
									result add: each.
									result add: each classSide]]]
					ifFalse: [ 
						originalList doWithIndex: [:each :i | 
							bar current: i.
							(each name includesSubstring: aString caseSensitive: false)
								ifTrue: [
									result add: each.
									result add: each classSide]]]].
	^result