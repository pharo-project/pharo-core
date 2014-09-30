centered
	"self centered"

	RubEditingArea new
		beWrapped;
		width: 300;
		updateTextWith: 'AAAAAA' , Character cr asString , 'BBBB';
		selectAll;
		centered;
		deselect;
		openInWorld