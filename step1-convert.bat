REM SOME BASICS TO START OFF THE SCRIPT AND DISPLAY SOME INFO ABOUT IT:
@echo off&&color 0a&&title EHVSN-Puzzle&&CLS&&echo The ASCII table has 128 characters, with values from 0 through 127.&&echo This scripts converts ASCII characters into the ASCII value.&&echo.

REM ASK THE USER FOR INPUT:
set /p input=Enter ASCII characters: 

REM SET INPUT WITH A ']' TERMINATION CHARACTER AT THE END, ONLY 1 ']' TERMINATION CHARACTER BECAUSE WE PARSE PER 1 CHARACTER IN THIS TYPE OF CONVERSION
set input=%INPUT%]

REM THE MAIN LOOP WHERE THE MAGIC IS, :EXTRACT IS CALLED FOR EACH CHARACTER OF THE INPUT STRING
:EXTRACT

REM EXTRACT THE FIRST CHARACTER(S):
set i=%input:~0,1%

REM GET ASCII VALUE, "%~nx0" DETERMINES THE FILENAME OF THE CURRENT ACTIVE BATCH FILE:
for /F "tokens=1,2,3,4,5,6 delims=;" %%a in ('type "%~nx0"') do if "R;%%c"=="R;%i%" set ASCII=%%b
set STRING=%STRING%%ASCII% 

REM REMOVE FIRST CHARACTER FROM INPUT:
set input=%input:~1%

REM END INPUT ON TERMINATION CHARACTER:
if "%input%"=="]" goto :DONE

goto :EXTRACT

REM ASCII VALUE CONVERSION TABLE:
R;032; 
R;045;-
R;046;.
R;064;@
R;095;_
R;048;0
R;049;1
R;050;2
R;051;3
R;052;4
R;053;5
R;054;6
R;055;7
R;056;8
R;057;9
R;065;A
R;066;B
R;067;C
R;068;D
R;069;E
R;070;F
R;071;G
R;072;H
R;073;I
R;074;J
R;075;K
R;076;L
R;077;M
R;078;N
R;079;O
R;080;P
R;081;Q
R;082;R
R;083;S
R;084;T
R;085;U
R;086;V
R;087;W
R;088;X
R;089;Y
R;090;Z
R;097;a
R;098;b
R;099;c
R;100;d
R;101;e
R;102;f
R;103;g
R;104;h
R;105;i
R;106;j
R;107;k
R;108;l
R;109;m
R;110;n
R;111;o
R;112;p
R;113;q
R;114;r
R;115;s
R;116;t
R;117;u
R;118;v
R;119;w
R;120;x
R;121;y
R;122;z
:EOF
:DONE
echo %STRING%
pause