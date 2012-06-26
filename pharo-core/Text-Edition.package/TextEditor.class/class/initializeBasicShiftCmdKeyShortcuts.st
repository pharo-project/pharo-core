keyboard shortcut tables
initializeBasicShiftCmdKeyShortcuts 
	"Initialize the shift-command-key (or control-key) shortcut table."

	"wod 11/3/1998: Fix setting of cmdMap for shifted keys to actually use the 
	capitalized versions of the letters.
	TPR 2/18/99: add the plain ascii values back in for those VMs that don't return the shifted values."

	"TextEditor initialize"
	
	| cmdMap |

	"shift-command and control shortcuts"
	cmdMap := Array new: 256 withAll: #noop:.  		"use temp in case of a crash"
	cmdMap at: ( 1 + 1) put: #cursorHome:.			"home key"
	cmdMap at: ( 4 + 1) put: #cursorEnd:.				"end key"
	cmdMap at: ( 8 + 1) put: #forwardDelete:.			"ctrl-H or delete key"
	cmdMap at: (11 + 1) put: #cursorPageUp:.			"page up key"
	cmdMap at: (12 + 1) put: #cursorPageDown:.		"page down key"
	cmdMap at: (13 + 1) put: #crWithIndent:.			"ctrl-Return"
	cmdMap at: (27 + 1) put: #offerMenuFromEsc:.	"escape key"
	cmdMap at: (28 + 1) put: #cursorLeft:.			"left arrow key"
	cmdMap at: (29 + 1) put: #cursorRight:.			"right arrow key"
	cmdMap at: (30 + 1) put: #cursorUp:.				"up arrow key"
	cmdMap at: (31 + 1) put: #cursorDown:.			"down arrow key"
	cmdMap at: (32 + 1) put: #selectWord:.			"space bar key"
	cmdMap at: (45 + 1) put: #changeEmphasis:.		"cmd-sh-minus"
	cmdMap at: (61 + 1) put: #changeEmphasis:.		"cmd-sh-plus"
	cmdMap at: (127 + 1) put: #forwardDelete:.		"del key"

	"Note: Command key overrides shift key, so, for example, cmd-shift-9 produces $9 not $("
	'9[,''' do: [ :char | cmdMap at: (char asciiValue + 1) put: #shiftEnclose: ].	"({< and double-quote"
	"Note: Must use cmd-9 or ctrl-9 to get '()' since cmd-shift-9 is a Mac FKey command."

	"NB: sw 12/9/2001 commented out the idiosyncratic line just below, which was grabbing shift-esc in the text editor and hence which argued with the wish to have shift-esc be a universal gesture for escaping the local context and calling up the desktop menu."  
	"cmdMap at: (27 + 1) put: #shiftEnclose:." 	"ctrl-["

	"'""''(' do: [ :char | cmdMap at: (char asciiValue + 1) put: #enclose:]."

	#(
		$c	compareToClipboard:
		$d	duplicate:
		$h	cursorTopHome:
		$j	doAgainMany:
		$k	changeStyle:
		$l	outdent:
		$m selectCurrentTypeIn:
		$r	indent:
		$s	search:
		$u	changeLfToCr:
		$x	makeLowercase:
		$y	makeUppercase:
		$z	makeCapitalized:
		$g #findAgain:
	) pairsDo: [ :char :symbol|
		cmdMap at: char asciiValue + 1 put: symbol.			"plain keys"
		cmdMap at: char asciiValue - 32 + 1 put: symbol.		"shifted keys"
		cmdMap at: char asciiValue - 96 + 1 put: symbol.		"ctrl keys"
	].
	shiftCmdActions := cmdMap