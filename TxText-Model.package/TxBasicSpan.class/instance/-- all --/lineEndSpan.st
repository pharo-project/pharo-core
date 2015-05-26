lineEndSpan
	"Answer the last span in the same line as receiver" 
	self do: [ :span | 
		span isAtLineEnd ifTrue: [ ^ span ]].
	Error signal: 'Should not happen'.