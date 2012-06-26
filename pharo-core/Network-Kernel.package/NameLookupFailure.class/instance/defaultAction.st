accessing
defaultAction
	"Backward compatibility"
	| response |
	response := (UIManager default  chooseFrom: #( 'Retry' 'Give Up')
			title: self messageText).
	^ response = 2
		ifFalse: [self retry]