IF EXIST "./middleware" (
    goto :startDocker
    IF %ERRORLEVEL% == 0 (
        goto :endScript
    ) ELSE (
        echo "Algo deu errado."
    )
) ELSE (
	CALL ./utils/git-clone.bat
    goto :startDocker
)

:startDocker
CALL docker --version
IF %ERRORLEVEL% == 0 (
   CALL docker-compose up
) ELSE (
    echo "docker nao existe"
)

:endScript
echo "Hackea ae!"

pause