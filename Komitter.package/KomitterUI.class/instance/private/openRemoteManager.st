openRemoteManager
	| view |

	view := RemotesManager new
		packages: (MCWorkingCopy allManagers sorted: [:a :b | a packageName < b packageName ]).
	view openWithSpec
		centered;
		modalRelativeTo: self window