as yet unclassified
parseTTCHeaderFrom: fontData

	| pos nTables |
	nTables := fontData longAt: 9 bigEndian: true.
	fonts := Array new: nTables.
	pos := 13.
	1 to: nTables do: [:i |
		fonts at: i put: (fontData longAt: pos bigEndian: true).
		pos := pos + 4.
	].

	^ fonts
