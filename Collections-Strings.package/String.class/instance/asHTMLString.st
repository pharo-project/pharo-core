converting
asHTMLString
	"substitute the < & > into HTML compliant elements"
	"'<a>' asHTMLString"
	^ self species streamContents: [:s | self do: [:c | s nextPutAll: c asHTMLString]]
