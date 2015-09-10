addStayUpIcons
	"Add the titlebar with buttons."
		
	self buildTitle: [ :tm | tm 
		withCloseBox;
		withPinBox;
		font: StandardFonts windowTitleFont	
	].
	
	self removeStayUpItems