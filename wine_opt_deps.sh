#!/bin/bash

WINE_OPT_DEPS=( "alsa-lib" 
                "alsa-plugins" 
                "cups" 
                "dosbox" 
                "giflib" 
                "gnutls" 
                "gsm" 
                "gst-plugins-base-libs" 
                "libgphoto2" 
                "libjpeg-turbo" 
                "libldap" 
                "libpng" 
                "libpulse" 
                "libxcomposite" 
                "libxinerama" 
                "libxslt" 
                "mpg123" 
                "ncurses" 
                "ocl-icd" 
                "openal" 
                "samba" 
                "sane" 
                "sdl2" 
                "v4l-utils" 
                "vkd3d" 
                "vulkan-icd-loader" 
                "lib32-alsa-lib" 
                "lib32-alsa-plugins" 
                "lib32-giflib" 
                "lib32-gnutls" 
                "lib32-gst-plugins-base-libs" 
                "lib32-libjpeg-turbo" 
                "lib32-libldap" 
                "lib32-libpng" 
                "lib32-libpulse" 
                "lib32-libxcomposite" 
                "lib32-libxinerama" 
                "lib32-libxslt" 
                "lib32-mpg123" 
                "lib32-ncurses" 
                "lib32-ocl-icd" 
                "lib32-openal" 
                "lib32-sdl2" 
                "lib32-v4l-utils" 
                "lib32-vkd3d" 
                "lib32-vulkan-icd-loader" )

for((i=0;i<${#WINE_OPT_DEPS[@]};i++))
do
    echo -e "${WINE_OPT_DEPS[$i]}"
done;