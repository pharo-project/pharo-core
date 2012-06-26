message category list
setOriginalCategoryIndexForCurrentMethod
	"private - Set the message category index for the currently selected method. 
	 
	 Note:  This should only be called when somebody tries to save  
	 a method that they are modifying while ALL is selected."

	messageCategoryListIndex := self messageCategoryList indexOf: self categoryOfCurrentMethod
	