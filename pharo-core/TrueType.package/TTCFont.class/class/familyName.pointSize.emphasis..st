instance creation
familyName: n pointSize: s emphasis: code

	"(TTCFont familyName: 'BitstreamVeraSans' pointSize: 12 emphasis: 0)"
	| t ret index |
	t := self registry at: n asSymbol ifAbsent: [#()].
	t isEmpty ifTrue: [
		t := (TextSharedInformation at: #DefaultTextStyle) fontArray.
		ret := t first.
		ret pointSize >= s ifTrue: [^ ret emphasis: code].
		index := 2.
		[index <= t size and: [(t at: index) pointSize <= s]] whileTrue: [
			ret := t at: index.
			index := index + 1.
		].
		^ ret emphasis: code.
	].
	^ ((TextStyle named: n) addNewFontSize: s) emphasis: code.
