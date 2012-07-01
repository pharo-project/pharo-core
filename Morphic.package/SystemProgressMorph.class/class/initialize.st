initialization
initialize
	"SystemProgressMorph initialize"

	self flag: 'will I be a listener, or started explicitly by an appropriate UIManager?'.	
	"SystemAnnouncer current on: OperationStarted send: #started: to: self."
	self reset.