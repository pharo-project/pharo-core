codePaneMenu: aMenu shifted: shifted 
	"Note that unless we override perform:orSendTo:, 
	PluggableTextController will respond to all menu items in a 
	text pane"
	
	^ menuHolder contents cull: aMenu cull: shifted