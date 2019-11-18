#!/bin/bash
work_dir=~/office_2013

mkdir -p $work_dir
cd $work_dir

## Install YAY
sudo pacman -Sy git pacman

git clone https://aur.archlinux.org/package-query.git
cd $work_dir/package-query
makepkg -si
cd $work_dir/

git clone https://aur.archlinux.org/yay-bin.git
cd $work_dir/yay-bin
makepkg -si
cd $work_dir
rm -rf yay-bin package-query


curl https://repo.koompi.org/piwin/office_2013/pacman-5.1.3-1-x86_64.pkg.tar.xz -o pacman-5.1.3-1-x86_64.pkg.tar.xz
curl https://repo.koompi.org/piwin/office_2013/wine-stable-4.0.2-1-x86_64.pkg.tar.xz -o wine-stable-4.0.2-1-x86_64.pkg.tar.xz
curl https://repo.koompi.org/piwin/office_2013/OFFICE15.iso -o OFFICE15.iso
## Install Wine Dependencies
yay -S --noconfirm desktop-file-utils fontconfig freetype2 gettext glu lcms2 lib32-fontconfig lib32-freetype2 lib32-gcc-libs lib32-gettext lib32-glu lib32-lcms2 lib32-libpcap lib32-libsm lib32-libxcursor lib32-libxdamage lib32-libxi lib32-libxml2 lib32-libxrandr libpcap libsm libxcursor libxdamage libxi libxml2 libxrandr alsa-lib fontforge giflib gnutls gsm gst-plugins-base-libs lib32-alsa-lib lib32-giflib lib32-gnutls lib32-gst-plugins-base-libs lib32-libgl lib32-libldap lib32-libpng lib32-libpulse lib32-libxcomposite lib32-libxinerama lib32-libxmu lib32-libxslt lib32-libxxf86vm lib32-mesa lib32-mpg123 lib32-ncurses lib32-ocl-icd lib32-openal lib32-sdl2 lib32-v4l-utils lib32-vkd3d lib32-vulkan-icd-loader libgl libgphoto2 libldap libpng libpulse libxcomposite libxinerama libxmu libxslt libxxf86vm mesa mpg123 ncurses ocl-icd openal opencl-headers samba sane sdl2 v4l-utils vkd3d vulkan-headers vulkan-icd-loader alsa-plugins cups dosbox 
yay -S --noconfirm exe-thumbnailer

sudo pacman -Rdd wine-staging
sudo pacman -Rdd wine
sudo pacman -U wine-stable-4.0.2-1-x86_64.pkg.tar.xz
sudo pacman -S --noconfirm wine-mono wine_gecko winetricks

sudo mkdir -p /mnt/office_2013
sudo modprobe loop
sudo mount -o loop OFFICE15.iso /mnt/office_2013

mkdir -p ~/.piwin/office_2013
WINEARCH=win32 WINEPREFIX=~/.piwin/office_2013 winecfg
WINEARCH=win32 WINEPREFIX=~/.piwin/office_2013 winetricks corefonts vb6run msftedit msxml6 vcrun6 riched20 riched30 richtx32 d3dx11_43
WINEARCH=win32 WINEPREFIX=~/.piwin/office_2013 wine /mnt/office_2013/setup.exe
 