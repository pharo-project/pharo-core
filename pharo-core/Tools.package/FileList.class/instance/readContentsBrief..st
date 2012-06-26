private
readContentsBrief: brevityFlag
	"Read the contents of the receiver's selected file, unless it is too long, in which case show just the first 5000 characters. Don't create a file if it doesn't already exist."
	| fileSize first5000 |

	self reference fileStreamWritable: false do: [:f|
		f ifNil: [^ 'For some reason, this file cannot be read' translated].
		
		(brevityFlag not or: [(fileSize := f size) <= 100000]) 
			ifTrue:[
				contents := [ f contents asString ]
					on: Error
					do: [ :ex | 
						contents := 'Error getting file contents. Is it binary ?' translated ].
				brevityState := #fullFile.   "don't change till actually read"
				^ contents].

		"if brevityFlag is true, don't display long files when first selected"
		[ first5000 := f next: 5000 ]
			on: Error
			do: [ :ex | 
				first5000 := 'Error getting file contents. Is it binary ?' translated ] ].
	
	contents := 'File ''{1}'' is {2} bytes long.
You may use the ''get'' command to read the entire file.

Here are the first 5000 characters...
------------------------------------------
{3}
------------------------------------------
... end of the first 5000 characters.' translated format: {self reference basename. fileSize. first5000}.
	brevityState := #briefFile.   "don't change till actually read"
	^ contents.
