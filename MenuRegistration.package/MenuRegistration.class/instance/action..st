spec accessing
action: aMessageSendOrABlock
	"set the action of the menu"
	
	aMessageSendOrABlock isBlock 
		ifTrue: [
			self target: aMessageSendOrABlock.
			self selector: #value]
		ifFalse: [
			self selector: aMessageSendOrABlock]
