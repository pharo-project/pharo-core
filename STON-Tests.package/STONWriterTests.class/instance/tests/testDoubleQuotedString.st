testDoubleQuotedString
	| string |
	self assert: (self serializeJson: 'foo') = '"foo"'.
	self assert: (self serializeJson: 'FOO') = '"FOO"'.
	self assert: (self serializeJson: '�l�ve en Fran�ais') = '"�l�ve en Fran�ais"'.
	string := String withAll: { 
		$". $'. $\. $/. Character tab. Character cr. Character lf. Character newPage. Character backspace }.
	"Note that in JSON mode, double quotes get escaped, and single quotes not"
	self assert: (self serializeJson: string) equals: '"\"''\\/\t\r\n\f\b"'.
