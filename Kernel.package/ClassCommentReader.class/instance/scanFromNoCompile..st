fileIn/Out
scanFromNoCompile: aStream 
	"File in the class comment from aStream.  Not string-i-fied, just a text, exactly as it is in the browser.  Move to changes file."

	self scanFrom: aStream.	"for comments, the same as usual"