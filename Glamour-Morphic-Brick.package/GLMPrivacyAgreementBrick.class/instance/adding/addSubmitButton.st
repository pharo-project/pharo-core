addSubmitButton

	|button|
	button := self newButtonBrick.
	button
		text: 'Agree';
		when: #onClicked do: [  ].
	self pushButton: button