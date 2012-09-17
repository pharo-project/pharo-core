accessing
commonPrefix 
	| prefix match |
	prefix := self entries first contents asString.
	match := prefix size.
	"find the common prefix of the first 3 items"
	entries from: 2 to: (entries size min: 3) do: [ :entry|
		match := match min: ( prefix howManyMatch: entry contents asString) ].
	^ match > 0
		ifTrue: [ prefix first: match ]
		ifFalse: [ nil ]