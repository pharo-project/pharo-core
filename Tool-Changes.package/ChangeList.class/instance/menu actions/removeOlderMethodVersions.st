removeOlderMethodVersions
	"Remove older versions of entries from the receiver."
	| equivalent toRemove|

	equivalent := Dictionary new.
	toRemove := Set new.
	changeList with: list do:
		[:change :displayString | 
			(equivalent at: (displayString copyUpTo: $;) ifAbsentPut: [OrderedCollection new.]) add: change ].
	equivalent do: #removeLast.
	equivalent do: [:each | toRemove addAll: each].
	self removeRecordsWhere: [:change | toRemove includes: change]