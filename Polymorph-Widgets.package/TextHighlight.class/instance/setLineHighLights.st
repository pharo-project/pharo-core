private
setLineHighLights

	"yes, i know ..."
	| anInterval paragraph firstLineIndex lastLineIndex |
	
	lineHighligths removeAll.
	anInterval := self lineRange.
	paragraph := self textMorph textMorph paragraph.
	firstLineIndex := paragraph lineIndexOfCharacterIndex: anInterval first.
	lastLineIndex := paragraph lineIndexOfCharacterIndex: anInterval last.
	
	firstLineIndex to: lastLineIndex do: [:i || line bounds offset1 offset2 right text subtext tabs |
		line := paragraph lines at: i.
		text := self textMorph text.
		subtext := text copyFrom: line first to: line last.
		tabs := subtext occurrencesOf: Character tab.
		right := (self textMorph font widthOfString: subtext) + (tabs * ((8*(self textMorph font widthOf:Character space))-6)).
		offset1 := 0.
		offset2 := 0.
		(i = firstLineIndex) ifTrue: [ offset1 := self textMorph font widthOfString: (text copyFrom: line first to: ((anInterval first -1)max: 1)) ].
		(i = lastLineIndex) ifTrue: [ offset2 := self textMorph font widthOfString: (text copyFrom: (anInterval last min: text size) to: line last) ].
		
		bounds := (line left+offset1)@line top corner: (right - offset2)@line bottom.		
		lineHighligths add: (self newLineHighlight
								bounds: bounds) ]