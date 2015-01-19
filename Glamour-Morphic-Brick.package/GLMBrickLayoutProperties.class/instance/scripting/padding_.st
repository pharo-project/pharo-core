padding: paddings
	"The paddings property can have from one to four values:
	
	padding: #(25 50 75 100)
		top padding is 25px
		right padding is 50px
		bottom padding is 75px
		left padding is 100px
		
	padding: #(25 50 75)
		top padding is 25px
		right and left paddings are 50px
		bottom padding is 75px
		
	padding: #(25 50)
		top and bottom paddings are 25px
		right and left paddings are 50px
		
	padding: #(25)
		all four paddings are 25px
		
	padding: 25
		all four paddings are 25px"
	
	paddings ifNil: [ ^ self padding: #(0) ].
	
	paddings isCollection ifTrue: [
		paddings isEmpty ifTrue: [ ^ self padding: #(0) ].
		self
			paddingTop: (paddings at: 1);
			paddingRight: (paddings at: 1);
			paddingBottom: (paddings at: 1);
			paddingLeft: (paddings at: 1).
		paddings size > 1 ifTrue: [
			self
				paddingRight: (paddings at: 2);
				paddingLeft: (paddings at: 2) ].
		paddings size > 2 ifTrue: [
			self paddingBottom: (paddings at: 3) ].
		paddings size > 3 ifTrue: [
			self paddingLeft: (paddings at: 4) ] ]
	ifFalse: [ ^ self padding: {paddings} ]