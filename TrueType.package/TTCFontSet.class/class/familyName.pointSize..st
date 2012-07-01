as yet unclassified
familyName: n pointSize: s

	"(self familyName: 'MultiMSGothic' pointSize: 14) pointSize"
	| t ret index |
	t := self registry at: n asSymbol ifAbsent: [#()].
	t isEmpty ifTrue: [
		t := (TextSharedInformation at: #DefaultTextStyle) fontArray.
		ret := t first.
		ret pointSize >= s ifTrue: [^ ret].
		index := 2.
		[index <= t size and: [(t at: index) pointSize <= s]] whileTrue: [
			ret := t at: index.
			index := index + 1.
		].
		^ ret.
	].
	^ (TextStyle named: n) addNewFontSize: s.