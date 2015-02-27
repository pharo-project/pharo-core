addShowMoreButton
	|button|

	button := GLMLabelBrick new.
	button
		text: 'Advanced options';
		textColor: (Color r: 51 g: 102 b: 187 range: 255);
		when: #onMouseHover do: [ button label highlight: button label text ];
		when: #onMouseUnhover do: [ button label highlight: nil ];
		when: #onClicked do: [ self toggleAdvanced ];
		with: [ :b | b label padding: #(3 0) ];
		hShrinkWrap;
		vShrinkWrap;
		floating: #right;
		hAlign: #right;
		vAlign: #center;
		enable.
		
	self pushButton: button