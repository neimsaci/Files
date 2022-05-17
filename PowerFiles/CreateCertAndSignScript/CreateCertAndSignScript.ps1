# My script is based on details of article that can be found here: https://adamtheautomator.com/how-to-sign-powershell-script/

$Name = Read-Host -Prompt "Enter name for the cert"
$AltName = Read-Host -Prompt "Enter alternative name for the cert"
$EndDate = Read-Host -Prompt "Enter date when cert will become invalid"
$ScriptToSign = Read-Host -Prompt "Enter full path to the script"
$StampServer = "http://timestamp.sectigo.com?td=sha256"
$CertLocation = 'Cert:\LocalMachine\My'
$CertType = 'CodeSigningCert'

$Cert = New-SelfSignedCertificate -Subject $Name -FriendlyName $AltName -Type $CertType -NotAfter $EndDate -CertStoreLocation $CertLocation -KeySpec None -KeyAlgorithm ECDSA_secp256r1
$Root = [System.Security.Cryptography.X509Certificates.X509Store]::new("Root", "LocalMachine")
$Root.Open("ReadWrite")
$Root.Add($Cert)
$Root.Close()
$Trusted = [System.Security.Cryptography.X509Certificates.X509Store]::new("TrustedPublisher", "LocalMachine")
$Trusted.Open("ReadWrite")
$Trusted.Add($Cert)
$Trusted.Close()

$SigningCert = Get-ChildItem Cert:\LocalMachine\My | Where-Object {$_.Subject -eq "CN=$Name"}
Set-AuthenticodeSignature -FilePath $ScriptToSign -Certificate $SigningCert -TimeStampServer $StampServer
