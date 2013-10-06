testGettingError

	self nonExistedPrim: [:context |

	"This error produced by Cog VM, when primitive not found"
		self assert: 
		(context tempAt: 	context method numTemps ) == #'not found'
	
	]