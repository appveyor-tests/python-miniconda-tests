function CheckPython($path) {
    if (-not (Test-Path "$path\python.exe")) { throw "python.exe is missing in $path"; }
    elseif (-not (Test-Path "$path\Scripts\pip.exe")) { throw "pip.exe is missing in $path"; }
    else { Write-Host "$path is OK" -ForegroundColor Green; }
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
