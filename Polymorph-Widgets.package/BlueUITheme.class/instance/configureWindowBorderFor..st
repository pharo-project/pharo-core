border-styles
configureWindowBorderFor: aWindow
"	super configureWindowBorderFor: aWindow.
	aWindow roundedCorners: #()"
		| aStyle |
	
	
	aStyle := 
		SimpleBorder new 
			color: (Color black alpha: 0.5);
			width: 1.
			
	aWindow borderStyle: aStyle.