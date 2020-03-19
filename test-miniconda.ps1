function CheckMiniconda($path) {
    if (-not (Test-Path "$path\python.exe")) { throw "python.exe is missing in $path"; }
    elseif (-not (Test-Path "$path\Scripts\conda.exe")) { throw "conda.exe is missing in $path"; }
    else { Write-Host "$path is OK" -ForegroundColor Green; }
    
    (cmd /c $path\python --version 2>&1)
    (cmd /c $path\Scripts\conda --version 2>&1)
}

CheckMiniconda 'C:\Miniconda'
CheckMiniconda 'C:\Miniconda-x64'
CheckMiniconda 'C:\Miniconda3'
CheckMiniconda 'C:\Miniconda3-x64'
CheckMiniconda 'C:\Miniconda35'
CheckMiniconda 'C:\Miniconda35-x64'
CheckMiniconda 'C:\Miniconda36'
CheckMiniconda 'C:\Miniconda36-x64'
CheckMiniconda 'C:\Miniconda37'
CheckMiniconda 'C:\Miniconda37-x64'
CheckMiniconda 'C:\Miniconda38-x64'
