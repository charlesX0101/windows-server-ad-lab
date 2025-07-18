# System Hardening

## Overview

This section covers basic security hardening steps to take after installing and configuring Windows Server 2022 and Active Directory. These changes make the domain controller more secure in a default setup.

## 1. Disable Guest Account

Used Local Security Policy to disable the built-in guest account.

Path:
Local Security Policy > Local Policies > Security Options > Accounts: Guest account status

Set to: Disabled

Screenshot:
screenshots/15_Hardening_Disable_Guest_Account.png

## 2. Enable Windows Firewall on All Profiles

Used Windows Defender Firewall with Advanced Security to ensure Domain, Private, and Public profiles were all enabled and active.

Screenshot:
screenshots/16_hardening_enable_windows_firewall_profiles.png

## 3. Enforce Strong Password Policy

Used Local Security Policy to set the following password requirements:

- Minimum password length: 14 characters
- Enforce password history: 24 passwords
- Maximum password age: 60 days
- Password must meet complexity requirements: Enabled

Screenshot:
screenshots/17_Hardening_Set_Strong_Password.png

## 4. Rename the Default Administrator Account

Renamed the built-in Administrator account to reduce attack surface.

Steps:
- Computer Management > Local Users and Groups > Users
- Right-click “Administrator”, select Rename
- New name: admin-corp or similar

Screenshot:
screenshots/18_hardening_rename_admin.png

## 5. Apply Password Policy via Group Policy

Configured password policies using Group Policy Management Editor:

Path:
Group Policy Management > Default Domain Policy > Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy

Screenshot:
screenshots/19_hardening_password_policy.png

## Note

Additional hardening steps, like setting up secure LDAP (LDAPS) or disabling unused services, were seen as optional and left out of this lab. These can be added in later labs as follow-up work.


