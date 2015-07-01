formatAsYouReadMorph
	^ (CheckboxMorph
		on: self 
		selected: #formatAsYouRead 
		changeSelected: #toggleFormatAsYouRead)
		getLabelSelector: #formatAsYouReadLabel;
		labelClickable: true;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		yourself