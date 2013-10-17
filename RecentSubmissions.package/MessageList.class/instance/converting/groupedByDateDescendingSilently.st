groupedByDateDescendingSilently
	"update the instance variable"
	
	| association |
	association := self buildByDate: [:m1 :m2 | m2 timeStamp <= m1 timeStamp].
	self dictionary: association key.
	self sortedMethodReferencesList: association value.
	self sortingSelector: self byDateDescendingSelector.