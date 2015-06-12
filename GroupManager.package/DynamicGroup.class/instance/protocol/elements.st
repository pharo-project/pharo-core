elements

	^ (self blocks flatCollect: [:block | block value]) copy asOrderedCollection removeDuplicates