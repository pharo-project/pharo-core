private
browseRule
	rulesModel selectedItem 
		ifNotNil: [:rule | rule browse]