accessing
selected2
	| item |

	item := self selectedClass.
	self showInstance ifFalse: [ item ifNotNil: [item := item theNonMetaClass]].

	^self getList2 indexOf: item.