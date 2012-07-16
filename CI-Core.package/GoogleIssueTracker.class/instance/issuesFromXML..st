private
issuesFromXML: xml
	
	^ (((GoogleIssueTracker soupClass fromString: xml) findAllTags: 'entry' )
			collect: [ :node| GoogleIssue fromXML: node tracker: self]) asArray.	