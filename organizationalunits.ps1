# brutforce script to make some organizational units

# you need to change "DC=ad,DC=crof7y,DC=lan" to match your domain and update the MC initials to match or remove them

Write-HoMC -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name MC_Computers -Path "DC=AD,DC=crof7y,DC=lan" -Description "MC Computers"
 New-ADOrganizationalUnit -Name WorkMCations -Path "OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=WorkMCations,OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=WorkMCations,OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=WorkMCations,OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=WorkMCations,OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=WorkMCations,OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=WorkMCations,OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=MC_Computers,DC=AD,DC=crof7y,DC=lan"
New-ADOrganizationalUnit -Name MC_Groups -Path "DC=AD,DC=crof7y,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name MC_Privileged_Accounts -Path "DC=AD,DC=crof7y,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name MC_Users -Path "DC=AD,DC=crof7y,DC=lan" -Description "Non-Privileged Accounts"
Write-HoMC -ForegroundColor yellow "Done creating OUs"
Write-HoMC -ForegroundColor yellow ""

Write-HoMC -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=MC_Groups,DC=AD,DC=crof7y,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=MC_Groups,DC=AD,DC=crof7y,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=MC_Groups,DC=AD,DC=crof7y,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=MC_Groups,DC=AD,DC=crof7y,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=MC_Groups,DC=AD,DC=crof7y,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=MC_Groups,DC=AD,DC=crof7y,DC=lan"
# Create a Leadership group for the President and VPs to access reMCricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=MC_Groups,DC=AD,DC=crof7y,DC=lan"
Write-HoMC -ForegroundColor yellow "Done creating groups"
Write-HoMC -ForegroundColor yellow ""
