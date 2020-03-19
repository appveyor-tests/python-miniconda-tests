function CheckPython($path) {
    if (Test-Path "$path\python.exe") {
        $r = (cmd /c "$path\python.exe" --version 2>&1)
        $r.Exception
        if (-not $r.Exception) {
            cmd /c "$path\python.exe" --version
        }
    } else {
        throw "python.exe is missing in $path";
    }
    
    if (Test-Path "$path\Scripts\pip.exe") {
        (cmd /c "$path\Scripts\pip.exe" --version 2>&1)
    } else if ($path.contains('26')) {
        Write-Host "pip.exe is missing in $path" -ForegroundColor Red
    } else {
        throw "pip.exe is missing in $path"
    }

    if (Test-Path "$path\Scripts\virtualenv.exe") {
        (cmd /c "$path\Scripts\virtualenv.exe" --version 2>&1)
    } else {
        Write-Host "virtualenv.exe is missing in $path" -ForegroundColor Red
    }
}

CheckPython 'C:\Python26'
CheckPython 'C:\Python26-x64'
CheckPython 'C:\Python27'
CheckPython 'C:\Python27-x64'
CheckPython 'C:\Python33'
CheckPython 'C:\Python33-x64'
CheckPython 'C:\Python34'
CheckPython 'C:\Python34-x64'
CheckPython 'C:\Python35'
CheckPython 'C:\Python35-x64'
CheckPython 'C:\Python36'
CheckPython 'C:\Python36-x64'
CheckPython 'C:\Python37'
CheckPython 'C:\Python37-x64'
CheckPython 'C:\Python38'
CheckPython 'C:\Python38-x64'
