as yet unclassified
readRecentChanges
	| changeFile end changeList |
	changeFile := (SourceFiles at: 2) readOnlyCopy setConverterForCode.
	end := changeFile size.
	changeList := Cursor read showWhile: [
		ChangeList new
			scanFile: changeFile
			from: (0 max: end - 50000)
			to: end ].
	records := changeList changeList select: [:e | e type = #method].
	