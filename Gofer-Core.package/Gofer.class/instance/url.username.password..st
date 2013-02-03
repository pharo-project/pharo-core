repositories
url: urlString username: username password: passwordString
	"Add urlString as a repository for the following package operations."

	| repository |
	repository := urlString asUrl mcRepositoryAsUser: username withPassword: passwordString.
	self repository: repository.