system changes
update: aSymbol
	InMidstOfFileinNotification signal ifFalse: [
	[((aSymbol = #recentMethodSubmissions)
		and: [self packageInfo
				includesMethodReference: RecentMessageList uniqueInstance lastEntry])
					ifTrue: [self modified: true]]
		on: Error do: []]