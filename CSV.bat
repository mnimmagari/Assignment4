@ECHO OFF

SET /P COLOR="Choose  (Help, Use, List or Save): "
2>NUL CALL :CASE_%COLOR% # jump to :CASE_Help, :CASE_Use, etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE # if label doesn't exist
 for /l %x in (1, 1, 10) do (
ECHO Done.
EXIT /B

:CASE_Help
  :start
  javac Help.java
  java Help
  pause
  GOTO END_CASE
:CASE_Use
  :start
   javac Use.java
   java Use
   pause
  GOTO END_CASE
:CASE_List
  :start
   javac List.java
   java List 
  pause
  GOTO END_CASE
:CASE_Save
  :start
  javac Save.java
  java Save
  pause
  GOTO END_CASE
:DEFAULT_CASE
  ECHO Invalid Option "%COLOR%"
  GOTO END_CASE )
:END_CASE
  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL