date: aDate

	| string |
	string := displayBlockHolder contents value: aDate.
	^ self dateModel text: string.