groupedByDateAscendingSilently
	"update the instance variable"
	
	| association |
	association := self buildByDate: [:m1 :m2 | m1 timeStamp <= m2 timeStamp].
	self dictionary: association key.
	self sortedMethodReferencesList: association value.
	self sortingSelector: self byDateAscendingSelector.