IF EXIST "./middleware" (
    goto :startDocker
    if %ERRORLEVEL% == 0 goto :ifErrorExists
    echo "Errors encountered during execution.  Exited with status: %errorlevel%"
    goto :endScript
) ELSE (
	CALL setup.bat
    goto :startDocker
)

:startDocker
CALL docker-compose up

:ifErrorExists
echo "Algo deu errado."

:endScript
echo "Hackea ae!"

pause