openRemoteManager
	| view |

	view := RemotesManager new
		packages: (MCWorkingCopy allManagers sorted: [:a :b | a packageName < b packageName ]).
	view openDialogWithSpec
		centered;
		modalRelativeTo: self window