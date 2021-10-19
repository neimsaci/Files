# Creating two aliases that will allow vi and vim commands usage system wide
New-Alias                  -Name vi        -Value     'C:\Program Files (x86)\Vim\vim82\vim.exe'
New-Alias                  -Name vim       -Value     'C:\Program Files (x86)\Vim\vim82\vim.exe'

# Enabling vim mode in PowerShell 
Set-PSReadlineOption       -EditMode        vi
