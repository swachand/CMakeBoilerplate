REM Starts a cppdev container bash session with the project folder mounted and set as the current working directory
for %%* in (..) do set "proj=%%~nx*"
docker run -it -v "%cd%/..:/%proj%" -w "/%proj%" cppdev bash