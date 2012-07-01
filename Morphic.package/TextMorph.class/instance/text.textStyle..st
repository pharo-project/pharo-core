private
text: t textStyle: s
	"Private -- for use only in morphic duplication"
	text := t.
	textStyle := s.
	paragraph ifNotNil: [paragraph textStyle: s]