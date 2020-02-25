IF EXIST "%ProgramFiles%\Git" (
	git clone https://github.com/andrekkss/conectados-middleware.git middleware
	git clone https://github.com/andrekkss/conectados-api.git post-service
) ELSE (
	echo Por favor instale git.
	echo Link de download: https://git-scm.com/downloads
)
