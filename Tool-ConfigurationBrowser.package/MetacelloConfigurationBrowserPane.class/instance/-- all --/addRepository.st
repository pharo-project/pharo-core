addRepository

	|repo|
	repo := UIManager default request: 'Repository to add' initialAnswer: 'http://smalltalkhub.com/mc/User/Project/main'.
	repo ifNotNil: [ AvailableRepositories add: repo. self repository: repo ]