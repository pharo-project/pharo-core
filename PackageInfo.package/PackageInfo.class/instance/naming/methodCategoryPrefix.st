methodCategoryPrefix
	^ methodCategoryPrefix ifNil: [methodCategoryPrefix := '*', self packageName asLowercase]