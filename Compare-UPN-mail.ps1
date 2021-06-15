################################################################################
################################################################################
## Script description                                                         ##
##                                                                            ##
## Name      : UPN-Mail-Comparison.ps1                                        ##
## Version   : 0.1                                                            ##
## Date      :                                                                ##
## Language  : PowerShell cmd-lets                                            ##
## License   : MIT                                                            ##
## Owner     : M.G                                                            ##
## Authors   : M.G                                                            ##
################################################################################
################################################################################


Get-ADUser -Filter * -SearchBase "OU=All Users,DC=ad,DC=nike,DC=com" -Properties EmailAddress | where {$_.UserPrincipalName -ne $_.EmailAddress} |select Name,SamAccountname,UserPrincipalName,EmailAddress |Export-Csv .\Desktop\UPN_Email_Dif.csv -NoTypeInformation
