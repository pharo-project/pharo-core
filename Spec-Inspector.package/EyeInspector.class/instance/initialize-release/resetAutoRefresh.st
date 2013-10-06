resetAutoRefresh
	"autoRefresh is disabled when the inspector has no window. If by any chance another window on the same inspector is shown after killing the previous window, call this method to restart the refreshProcess."
	
	refreshLoop ifNotNil: [ :updateProcess | 
		updateProcess isTerminated ifTrue: [ self initializeAutoRefresh ] ]