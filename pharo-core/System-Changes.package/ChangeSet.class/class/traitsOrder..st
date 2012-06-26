filein/out
traitsOrder: aCollection 
	"Answer an OrderedCollection. The traits 
	are ordered so they can be filed in."

	|  traits |
	traits := aCollection asSortedCollection: [:t1 :t2 |
		(t1 isBaseTrait and: [t1 classTrait == t2]) or: [
			(t2 traitComposition allTraits includes: t1) or: [
				(t1 traitComposition allTraits includes: t2) not]]].
	^traits asArray