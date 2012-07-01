converting
groupedByClassSilently
	"update the instance variable"
	
	| association |
	association := self buildByClass.
	self dictionary: association key.
	self sortedMethodReferencesList: association value.
	self sortingSelector: self byClassSelector.