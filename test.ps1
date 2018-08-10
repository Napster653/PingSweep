1..255 | foreach { 
    $IP = "192.168.1.$_"

    Write-Host -NoNewline 'Testing ' $IP'...'

    If (Test-Connection $IP -count 1 -Quiet)
    {
        Write-Host 'OK'
    }
    Else
    {
        Write-Host 'ERROR'
    }
}