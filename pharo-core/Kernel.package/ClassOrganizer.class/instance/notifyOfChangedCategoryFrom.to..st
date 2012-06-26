private
notifyOfChangedCategoryFrom: oldNameOrNil to: newNameOrNil
	(self hasSubject and: [oldNameOrNil ~= newNameOrNil]) 
		ifTrue: [SystemChangeNotifier uniqueInstance classReorganized: self subject].