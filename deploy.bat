@echo off
setlocal

REM Go to the project directory
cd /d "%~dp0"

REM Prevent Jenkins from killing the background process
set JENKINS_NODE_COOKIE=dontKillMe
set BUILD_ID=dontKillMe

REM Start the web server in the background on port 8082
start "Jenkins Web Server" /b cmd /c "npx --no-install http-server . -p 8082"

echo Deployment command executed.
exit /b 0