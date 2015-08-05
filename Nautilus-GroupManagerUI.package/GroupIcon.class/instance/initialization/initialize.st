initialize
	super initialize.
	groupEditIcon := self formForSelector: #groupEditIconContents.
	groupAddIcon := self formForSelector: #groupAddIconContents.
	groupRemoveIcon := self formForSelector: #groupRemoveIconContents.
	upRedArrowIcon := self formForSelector: #upRedArrowIconContents.
	downArrowIcon := self formForSelector: #downArrowIconContents.
	groupIcon := self formForSelector: #groupIconContents.
	emptyGroupIcon := self formForSelector: #emptyGroupIconContents