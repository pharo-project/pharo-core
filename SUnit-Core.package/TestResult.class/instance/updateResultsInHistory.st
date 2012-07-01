history
updateResultsInHistory
	
	#(#passed #failures #errors) do: [ :status | 
		(self perform: status) do: [ :testCase | 
			self class updateTestHistoryFor: testCase status: status ] ]