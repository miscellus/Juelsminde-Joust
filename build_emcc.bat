@echo off

set GAME_NAME=juelsminde_joust.html

emcc ^
  -o "%GAME_NAME%" ^
  -DPLATFORM_WEB ^
  -DNDEBUG ^
  main.c ^
  -Os ^
  -Wall ^
  .\raylib5.5\lib_emcc\libraylib.a ^
  -I.\raylib5.5\include ^
  -Lraylib5.5\lib_emcc ^
  --preload-file resources ^
  --shell-file juelsminde_joust.shell.html ^
  -s USE_GLFW=3 ^
  -s TOTAL_MEMORY=67108864


if %ERRORLEVEL%==0 (
  echo Build succeeded: %GAME_NAME%
  start "" "%GAME_NAME%"
) else (
  echo Build failed.
  exit /b %ERRORLEVEL%
)
