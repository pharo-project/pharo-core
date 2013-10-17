clear
 	"BreakpointManager clear"

 	self installed associations do: [:entry |
		self unInstall: entry key].
		
		