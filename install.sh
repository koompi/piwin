#!/bin/bash

# Declare all variables here
DEPS=('desktop-file-utils' 'faudio' 'fontconfig' 'freetype2' 'gcc-libs' 'gettext' 'glu' 'lcms2' 'lib32-faudio' 'lib32-fontconfig' 'lib32-freetype2' 'lib32-gcc-libs' 'lib32-gettext' 'lib32-glu' 'lib32-lcms2' 'lib32-libpcap' 'lib32-libsm' 'lib32-libxcursor' 'lib32-libxdamage' 'lib32-libxi' 'lib32-libxml2' 'lib32-libxrandr' 'libpcap' 'libsm' 'libxcursor' 'libxdamage' 'libxi' 'libxml2' 'libxrandr' 'alsa-lib' 'alsa-plugins' 'cups' 'dosbox' 'giflib' 'gnutls' 'gsm' 'gst-plugins-base-libs' 'lib32-alsa-lib' 'lib32-alsa-plugins' 'lib32-giflib' 'lib32-gnutls' 'lib32-gst-plugins-base-libs' 'lib32-libjpeg-turbo' 'lib32-libldap' 'lib32-libpng' 'lib32-libpulse' 'lib32-libxcomposite' 'lib32-libxinerama' 'lib32-libxslt' 'lib32-mpg123' 'lib32-ncurses' 'lib32-openal' 'lib32-opencl-icd-loader' 'lib32-sdl2' 'lib32-v4l-utils' 'lib32-vkd3d' 'libgphoto2' 'libjpeg-turbo' 'libldap' 'libpng' 'libpulse' 'libxcomposite' 'libxinerama' 'libxslt' 'mpg123' 'ncurses' 'openal' 'opencl-icd-loader' 'samba' 'sane' 'sdl2' 'v4l-utils' 'vkd3d')

#sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
#sudo pacman -Sy --noconfirm wine



for i in "${DEPS[@]}"; do
  #echo $i
  sudo pacman -S --noconfirm $i
done

