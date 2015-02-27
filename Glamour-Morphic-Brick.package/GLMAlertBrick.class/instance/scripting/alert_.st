alert: anObject

	self alertOn: anObject.
	(self openInBrickWindowLabeled: 'Alert')
		noMenu;
		innerExtent: self extent