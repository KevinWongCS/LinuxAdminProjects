name: kevin wong
date: 06/15/2022
filename: DualBootWin10&Pop!_OS.md
desc: how to dual boot System 76's Pop!_OS along side windows 10

### Creating disk space
- Enter Disk Management
  - Right click a drive volume
  - Click on "Shrink Volume"
    - Declare how much memory is needed for new OS and all programs that it is entended to run.
 
 ### Creating installation drive
 - Download Pop!_OS iso file
 - Download RuFus to create the bootable drive with Pop!_OS


### Installing OS
- Restart computer
- Press Del or F2 to enter UEFI/BIOS settings
- Disable "Secure Boot", requirement for installing Pop!_OS
- Select Pop!_OS to boot

### Creating dependencies for Pop!_OS
- Use the gui to create the following partitions
  - bootefi as fat32
  - root as ext4
  - swap as linux-swap
- Apply the partitions and assign them using the "Use as" "boot/efi", "root", and "swap"

### Follow the rest of the installation instructions using the gui
