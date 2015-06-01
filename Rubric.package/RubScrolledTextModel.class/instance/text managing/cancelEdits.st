cancelEdits
	"Cancel the current contents and end editing."
	self announce: RubCanceEditRequestedInModel new.
	self clearUserEdits  