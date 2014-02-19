menu: aMenu shifted: aBoolean

	^ (self model menu: aMenu shifted: aBoolean) ifNotNil: [ :menu | menu buildWithSpec ]