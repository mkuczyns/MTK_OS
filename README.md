# MTK_OS
A simple custom OS for the Raspberry Pi 3B+

## Setting up the Development Environment (Linux - Fedora 30)
1. Cross-Compiler (gcc-arm-none-eabi):
  - Download the file named [gcc-arm-none-eabi-8-2018-q4-major.tar.bz2](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)
  - tar -xjf gcc-arm-none-eabi-8-2018-q4-major.tar.bz2

2. Emulator (QEMU, v2.11 or later)
  - sudo dnf install glib2-devel  <--- Needed for QEMU
  - sudo dnf install qemu-system-arm-core
  - check install with: qemu-system-arm --version
