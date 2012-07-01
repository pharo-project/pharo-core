accessing
recentClasses

	^ RecentClasses ifNil: [ RecentClasses := HistoryCollection maxSize: self maxSize ]