$user = 'u3458917'
$pass = 'Constantine01?!'
$base = 'ftp://ftp.magcard.ru'

# List www contents
$req = [System.Net.FtpWebRequest]::Create("$base/www/")
$req.Method = [System.Net.WebRequestMethods+Ftp]::ListDirectoryDetails
$req.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
$resp = $req.GetResponse()
$r = New-Object System.IO.StreamReader($resp.GetResponseStream())
$list = $r.ReadToEnd()
$r.Close()
$resp.Close()
Write-Host "=== www/ ==="
Write-Host $list

# Check for other possible web roots
$req2 = [System.Net.FtpWebRequest]::Create("$base/")
$req2.Method = [System.Net.WebRequestMethods+Ftp]::ListDirectoryDetails
$req2.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
$resp2 = $req2.GetResponse()
$r2 = New-Object System.IO.StreamReader($resp2.GetResponseStream())
$list2 = $r2.ReadToEnd()
$r2.Close()
$resp2.Close()
Write-Host "=== ROOT ==="
Write-Host $list2
