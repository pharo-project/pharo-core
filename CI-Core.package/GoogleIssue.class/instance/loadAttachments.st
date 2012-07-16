loading
loadAttachments
	"since there is no api for accessing attachments from the google issuetracker we have to manually fetch the website and extract the attachments :)"
	
	| soup regex attachmentLinks commentTags attachment comment|
	
	soup := GoogleIssueTracker soupClass fromString:  (self tracker get: self viewUrl) contents.
	
	"manually find the matching attachment urls.."
	regex := ('http\://', self project, '.googlecode.com/issues/attachment\?.*') asRegex.
	
	attachmentLinks := ((soup // 'a') select: [ :tag| tag size = 1])
									attribute: #href matching: regex.
	
	attachmentLinks isEmpty
		ifTrue: [ ^ Array new ]. 
	
	"find the parent comment"
	commentTags := (soup // 'div') attribute: 'id' matching: 'hc[0-9]+' asRegex.
		
	"assign attachments to issues"
	^ (Array streamContents: [ :stream|
		commentTags do: [ :commentTag|
			comment := self commentById: (commentTag id allButFirst: 2) asInteger.
			attachmentLinks 
				select: [ :link| commentTag includesTag: link] 
				thenDo: [ :link|
					stream nextPut: 
						(comment addAttachment: 
							((GoogleAttachment fromURL: link href)
										issue: self;
										yourself))]]]) sort: [ :a :b| a published <= b published]
							
	