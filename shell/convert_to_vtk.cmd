@echo off

set argC=0
for %%x in (%*) do Set /A argC+=1

if %argC% NEQ 1 ( 
	 echo please  specify the input directory
	 exit /b
)
start pvbatch %~dp0convert_to_vtk.py %~dpnx1
