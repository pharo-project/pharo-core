addUpAction: anActionOrBlock
	"Add an up event handler."
	
	self announcer when: ButtonClicked do: anActionOrBlock.