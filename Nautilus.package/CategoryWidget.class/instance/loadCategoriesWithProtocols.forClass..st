private
loadCategoriesWithProtocols: protocols forClass: class
	| package result tmp |
	
	package := self model selectedPackage.
	result := OrderedCollection with: self model allLabel.
	tmp := #().
	tmp := protocols
		select: [ :each | 
			| item |
			each first = $*
				ifTrue: [ 
					item := each allButFirst asLowercase.
					item = package name asLowercase
						or: [ (item beginsWith: package name asLowercase) and: [ ((item at: package name size + 1) = $-) not ]]]
				ifFalse: [ false ]].
	result addAll: tmp sort.
	tmp := protocols reject: [ :e | tmp includes: e ].
	result addAll: tmp sort.
	^ result