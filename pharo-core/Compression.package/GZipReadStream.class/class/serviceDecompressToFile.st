filein/out
serviceDecompressToFile

	^ FileModifyingSimpleServiceEntry 
				provider: self 
				label: 'Decompress to file'
				selector: #saveContents:
				description: 'Decompress to file'