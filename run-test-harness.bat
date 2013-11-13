@echo off
rem ---------------------------------------------------------------------------
rem Script to run jmeter test-harness
rem ---------------------------------------------------------------------------

call set ANT_OPTS=-Xms128M -Xmx4096m -server
call echo %ANT_OPTS%

rem ***delete reports and logs from previous run
call "ant" -f build.xml setup-suite

rem ***setup test users (delete existing if names matches)
call "ant" -f build.xml setup-users

rem ***setup test sites (delete existing if names matches)
call "ant" -f build.xml setup-sites

rem ***run read-only test
call "ant" -f build.xml read-only-test

rem ***run full test
call "ant" -f build.xml full-test

pause
