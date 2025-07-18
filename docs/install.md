# Windows Server 2022 Installation and Initial Configuration

## Overview

This document explains how to install Windows Server 2022 and set up the base system before promoting it to a domain. All tasks were done inside a QEMU/KVM virtual machine with Virt-Manager on a Linux host.

## 1. Download ISO

Official evaluation ISO obtained from Microsoft.

Screenshot: `screenshots/01_download_windows_server2022.png`

## 2. VM Setup

Created a new VM with the following specs:

- 4 vCPUs
- 4 GB RAM
- 25 GB virtual disk
- UEFI firmware enabled
- Windows Server 2022 ISO attached as boot media

Screenshots:
- `screenshots/02_vm_setup01.png`
- `screenshots/02_vm_setup02.png`
- `screenshots/02_vm_setup03.png`
- `screenshots/02_vm_setup04.png`
- `screenshots/02_vm_setup05.png`
- `screenshots/02_vm_setup06.png`

## 3. OS Installation

Walked through the installer:

- Selected “Windows Server 2022 Standard (Desktop Experience)”
- Chose custom partition layout:
  - 50 GB (Primary OS)
  - 10 GB (Reserved/Data)
- Let installer complete and reboot

Screenshots:
- `screenshots/03_start_install.png`
- `screenshots/04_select_edition.png`
- `screenshots/05_disk_layout.png`

## 4. First Boot

On first boot:

- Set Administrator password
- Reached the desktop GUI
- Opened Server Manager to confirm installation

Screenshot:
- `screenshots/06_first_login.png`

## 5. Set Hostname

Changed computer name to `winserver2022`.

Screenshot:
- `screenshots/07_hostname_set.png`

## 6. Configure Static IP

Set static IP in the 192.168.x.x range.

- Configured IPv4 manually
- Set DNS to localhost for AD resolution

Screenshot:
- `screenshots/08_static_ip_config.png`

