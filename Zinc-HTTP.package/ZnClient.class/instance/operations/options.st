options
	"Execute an HTTP OPTIONS ont the request set up and return the response #contents."
	
	^ self 
		method: #OPTIONS; 
		execute