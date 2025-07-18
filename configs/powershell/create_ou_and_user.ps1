# Create Organizational Unit
New-ADOrganizationalUnit -Name "TestOU" -Path "DC=yourdomain,DC=local"

# Create Test User inside the OU
New-ADUser -Name "TestUser" `
  -AccountPassword (ConvertTo-SecureString "StrongPass123!" -AsPlainText -Force) `
  -Enabled $true `
  -Path "OU=TestOU,DC=yourdomain,DC=local"

