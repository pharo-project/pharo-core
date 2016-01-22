update50540
	"self new update50540"
	
#('AST-Core-ChristopheDemarey.396' 'Balloon-ChristopheDemarey.127' 'Collections-Strings-ChristopheDemarey.386' 'Collections-Weak-ChristopheDemarey.96' 'FileSystem-Core-ChristopheDemarey.188' 'FileSystem-Disk-ChristopheDemarey.87' 'Files-ChristopheDemarey.406' 'FontInfrastructure-ChristopheDemarey.11' 'FreeType-ChristopheDemarey.717' 'Graphics-Display Objects-ChristopheDemarey.167' 'Graphics-Fonts-ChristopheDemarey.103' 'Graphics-Primitives-ChristopheDemarey.184' 'Kernel-ChristopheDemarey.2211' 'Metacello-GitHub-ChristopheDemarey.48' 'Monticello-ChristopheDemarey.1106' 'Morphic-Core-ChristopheDemarey.243' 'Multilingual-Languages-ChristopheDemarey.46' 'NECompletion-ChristopheDemarey.231' 'Nautilus-ChristopheDemarey.1202' 'Network-Kernel-ChristopheDemarey.121' 'Network-UUID-ChristopheDemarey.37' 'NonInteractiveTranscript-ChristopheDemarey.20' 'System-Clipboard-ChristopheDemarey.34' 'System-BasicCommandLineHandler-ChristopheDemarey.7' 'System-Finalization-ChristopheDemarey.25' 'System-Localization-ChristopheDemarey.97' 'System-OSEnvironments-ChristopheDemarey.15' 'System-Platforms-ChristopheDemarey.75' 'System-Support-ChristopheDemarey.1185' 'System-VMEvents-ChristopheDemarey.11' 'Tool-Base-ChristopheDemarey.127' 'Tool-ProcessBrowser-ChristopheDemarey.11' 'Traits-ChristopheDemarey.872' 'Polymorph-Widgets-ChristopheDemarey.1308')	
	do: [ :each |
		Gofer it
   			   smalltalkhubUser: 'Pharo'
      			  project: 'Pharo50Inbox';
      			version: each;
				merge ].
	self withUpdateLog: '17446 Add registration/unregistration to/from session manager
	https://pharo.fogbugz.com/f/cases/17446'.
	self loadTogether: self script50540 merge: false.
	self flushCaches.
