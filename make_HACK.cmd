@echo off
cd %~dp0
copy "Clean.gba" New.gba

cd "%~dp0Text"
textprocess_v2 text_buildfile.event

cd "%~dp0Maps"
tmx2ea

cd "%~dp0Event Assembler"
ColorzCore A FE8 "-output:%~dp0New.gba" "-input:%~dp0Master.event"

pause