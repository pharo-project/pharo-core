testMinusSecondsOverMidnight
	
	| dAndt |
	dAndt := aTimeStamp - (34 * 60 + 57) seconds.
	self assert: dAndt asDate asString =  '01-01-2004' asDate asString.
	self assert: dAndt asTime asString =  '23:59:59' asTime asString
	"Bug The results are actual results are: #(1 January 2005 11:25:03 pm)"