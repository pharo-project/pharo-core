readFrom: inputStream pattern: pattern
	"See 
	DateParser comment"

	^ (DateParser readingFrom: inputStream pattern: pattern) parse
