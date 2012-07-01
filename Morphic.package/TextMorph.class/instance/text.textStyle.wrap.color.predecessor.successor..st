private
text: t textStyle: s wrap: wrap color: c
	predecessor: pred successor: succ
	"Private -- for use only in morphic duplication"
	text := t.
	textStyle := s.
	wrapFlag := wrap.
	color := c.
	paragraph := editor := container := nil.
	self predecessor: pred successor: succ