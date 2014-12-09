findBigOnes
	"self findBigOnes"
	^(Set allSubclasses
		add: Set;
		yourself) in: [ :classes |
			(classes gather: [ :each | each allInstances])
				select: [ :each | each size > 4000 ] ]