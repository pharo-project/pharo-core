updateFont
	font := LogicalFont familyName: self familyName pointSize: self size.
	self notifyUpdate.