
:: ---------------------------------------------
:: target=你要设置的新的path
:: ---------------------------------------------

set target=C:\Program Files\7-Zip


:: ---------------------------------------------
:: 下面的代码不要更改
:: ---------------------------------------------

break>path_var.txt
echo %PATH% >> path_var.txt


find /c "%target%" path_var.txt >NULL
if %errorlevel% equ 1 goto notfound
        echo found
		echo nothing to do
    goto done
    :notfound
		set currentPath=%PATH%
		echo notfound, need add
		set e=""
		SETX PATH %e%
		SETX PATH "%target%;%currentPath%"
    goto done
    :done
		break>path_var.txt
		

::echo %PATH%
::echo NULL
echo finished

::shutdown.exe /r /t 00

pause


