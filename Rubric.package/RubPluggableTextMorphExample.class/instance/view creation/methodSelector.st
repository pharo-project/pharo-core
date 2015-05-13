methodSelector
	|pt|
	pt := PluggableTextFieldMorph new
		convertTo: String;
		autoAccept: true;
		alwaysAccept: true;
		on: self
		text: #selectedMethodName 
		accept: #setSelectedMethodName:
		readSelection: nil
		menu: nil;
		acceptOnCR: true;
		hResizing: #spaceFill;
		height: self theme textFont height;
		vResizing: #rigid;
		font: self theme textFont;
		hideScrollBarsIndefinitely.
	pt textMorph
		autoFit: true;
		wrapFlag: false.
	^pt