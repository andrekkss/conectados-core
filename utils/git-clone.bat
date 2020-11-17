IF EXIST "%ProgramFiles%\Git" (
	git clone https://github.com/andrekkss/conectados-middleware.git middleware
	git clone https://github.com/andrekkss/conectados-posts.git post-service
	git clone https://github.com/andrekkss/conectados-client.git client-service
	git clone https://github.com/andrekkss/conectados_mob conectados-mob
) ELSE (
	echo Por favor instale git.
	echo Link de download: https://git-scm.com/downloads
)
