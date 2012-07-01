*Polymorph-Widgets
showAbout
	"Show the class comment of the model in a workspace.
	Suggested by Michael Davies."

	self theme  
		longMessageIn: self
		text: self aboutText
		title: self aboutTitle