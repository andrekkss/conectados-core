CALL docker --version
IF %ERRORLEVEL% == 0 (
   CALL docker-compose --file ./docker-mongodb.yml up
	pause
) ELSE (
    echo "docker nao existe"
	pause
)
