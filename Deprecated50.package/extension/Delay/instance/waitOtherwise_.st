waitOtherwise: anErrorBlock
	"	
	This method originally introduced during the refactoring of DelayScheduling out of Delay.
	Upon later review, this was over-conservative and unnecessarily complicates the #schedule: methods.  
	  Case 17297 removed in-image senders.
	  Case 17296 deprecated this method, forwarded to original #wait, and cleaned up the #schedule: methods.  
   "
	self 
		deprecated: 'Use wait instead'
		on: 	'28 December 2015' 
		in: 'Kernel-Processes'.

	self wait.