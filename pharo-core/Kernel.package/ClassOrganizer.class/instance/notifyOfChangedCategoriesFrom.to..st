private
notifyOfChangedCategoriesFrom: oldCollectionOrNil to: newCollectionOrNil
	(self hasSubject and: [oldCollectionOrNil ~= newCollectionOrNil]) 
		ifTrue: [SystemChangeNotifier uniqueInstance classReorganized: self subject].