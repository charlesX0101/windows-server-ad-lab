# Active Directory Configuration

## Overview

This section details how to install and set up Active Directory Domain Services (AD DS) on Windows Server 2022. It covers domain promotion, OU design, and user creation.

## 1. Add AD DS Role

Used Server Manager to install the AD DS role with management tools.

PowerShell:
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

Screenshot:
screenshots/09_add_ad_ds_role.png

## 2. Promote to Domain Controller

Used Server Manager to promote the server to a new forest and domain.

- Root domain name: corp.local
- Set DSRM password
- Automatic DNS and Global Catalog configuration
- Rebooted after setup

Screenshot:
screenshots/10_domain_promotion.png

## 3. Verify Domain Info

After reboot, logged in with domain credentials. Used PowerShell to verify domain and forest configuration.

PowerShell:
Get-ADDomain
Get-ADForest

Screenshots:
screenshots/11_get_addomain.png
screenshots/12_get_adforest.png

## 4. Create OU Structure

Designed a basic OU structure for organizational clarity:

- corp.local
  - Users
  - Admins
  - Workstations
  - Servers

Used Active Directory Users and Computers (ADUC) GUI to create OUs.

Screenshot:
screenshots/13_create_ou_structure.png

## 5. Add a Test User

Created a standard domain user:

- Name: testuser
- Assigned to “Users” OU
- Password set with default policy

Used ADUC for creation.

Screenshot:
screenshots/14_create_test_user.png

