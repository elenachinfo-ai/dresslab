function Create-FtpDirectory {
    param($url, $user, $pass)
    $request = [System.Net.FtpWebRequest]::Create($url)
    $request.Method = [System.Net.WebRequestMethods+Ftp]::MakeDirectory
    $request.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
    try { $response = $request.GetResponse(); $response.Close(); Write-Host "Created: $url" }
    catch { Write-Host "Exists or failed: $url - $_" }
}

$user = 'u3458917'
$pass = 'Constantine01?!'
$base = 'ftp://ftp.magcard.ru'

# Create dirs
Create-FtpDirectory "$base/ipg" $user $pass
Create-FtpDirectory "$base/jpg2" $user $pass

# Upload files
$wc = New-Object System.Net.WebClient
$wc.Credentials = New-Object System.Net.NetworkCredential($user, $pass)

$wc.UploadFile("$base/ipg/photo_2026-06-14_19-15-58.jpg", 'C:\Users\lena\Desktop\Start\ipg\photo_2026-06-14_19-15-58.jpg')
Write-Host 'ipg/photo1 ok'

$wc.UploadFile("$base/ipg/photo2.jpg", 'C:\Users\lena\Desktop\Start\ipg\photo_2026-06-14_19-15-58 (2).jpg')
Write-Host 'ipg/photo2 ok'

$wc.UploadFile("$base/ipg/video_2026-06-14_19-20-56.mp4", 'C:\Users\lena\Desktop\Start\ipg\video_2026-06-14_19-20-56.mp4')
Write-Host 'ipg/video ok'

$wc.UploadFile("$base/jpg2/video_2026-06-14_19-30-08.mp4", 'C:\Users\lena\Desktop\Start\jpg2\video_2026-06-14_19-30-08.mp4')
Write-Host 'jpg2/video ok'

Write-Host 'ALL DONE!'
