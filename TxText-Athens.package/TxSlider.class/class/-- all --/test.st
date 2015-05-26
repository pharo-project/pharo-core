test
"self test"
	| m w |
	
	m := self new.
	m announcer on: TxSliderScrollForward send: #advance to: m.
	m announcer on: TxSliderScrollBackward send: #retreat to: m.
	
	w := AthensWrapMorph new.
	
	w addMorph: m.
	w openInWindow.