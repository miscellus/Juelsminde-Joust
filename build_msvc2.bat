@echo off

set GAME_NAME=Juelsminde Joust.exe

cl ^
  -I.\raylib5.5\include ^
  main.c ^
  -Fe:"%GAME_NAME%" ^
  -link ^
  -LIBPATH:raylib5.5\lib_msvc ^
  gdi32.lib msvcrt.lib raylib.lib winmm.lib user32.lib shell32.lib ^
  -NODEFAULTLIB:libcmt -NODEFAULTLIB:msvcrtd

if %ERRORLEVEL%==0 (
  echo Build succeeded: %GAME_NAME%
  start "" "%GAME_NAME%"
) else (
  echo Build failed.
  exit /b %ERRORLEVEL%
)
