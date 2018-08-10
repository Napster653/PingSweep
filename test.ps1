1..255 | foreach { 
    $IP = "192.168.1.$_"

    If (Test-Connection $IP -count 1 -Quiet)
    {
        Write-Host $IP -ForegroundColor Green
    }
    Else
    {
        Write-Host $IP -ForegroundColor Red
    }
}