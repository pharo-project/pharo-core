codePaneMenu: aMenu shifted: shifted
	"Note that unless we override perform:orSendTo:, PluggableTextController will respond to all menu items"
	^ StringHolder basicNew codePaneMenu: aMenu shifted: shifted
