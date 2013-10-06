buildByPackage
	"Return an association where key is a Dictionary and value is the list sorted"

	| result tempList |
	result := Dictionary new.
	tempList := self methodReferenceList copy sort: [:m1 :m2 | m2 timeStamp <= m1 timeStamp].
	tempList do: [:each |
		| class key1 key2 value |
		class := self environment classNamed: each theNonMetaClassName.
		key1 := class category.
		key2 := each actualClass.
		value := each.
			
		(result includesKey: key1)
			ifFalse: [result at: key1 put: Dictionary new].
		((result at: key1) includesKey: key2)
			ifFalse: [(result at: key1) at: key2 put: OrderedCollection new].
		((result at: key1)at: key2) add: value].
	^(Association key: result value: tempList)