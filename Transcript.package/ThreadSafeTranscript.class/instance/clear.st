streaming
clear
	"Clear all characters and redisplay the view"
	
	self changed: #clearText.
	accessSemaphore 
		critical: [ stream reset ]