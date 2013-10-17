buildByVersion
	"Return an association where key is a Dictionary and value is the list sorted"
	
	| result tempList |
	result := Dictionary new.
	tempList := self methodReferenceList copy sort: [:m1 :m2 | m2 timeStamp <= m1 timeStamp].
	tempList do: [:each |
		| key value systemVersion |
		systemVersion := self findVersionOf: each.
		key := systemVersion version, ' - ',systemVersion highestUpdate asString..
		value := each.	
		(result includesKey: key)
			ifFalse: [result at: key put: OrderedCollection new].
		(result at: key) add: value].
	^(Association key: result value: tempList)