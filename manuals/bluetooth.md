# Bluetooth on Manjaro and arch
sudo pacman -Syu pulseaudio-bluetooth bluez bluez-utils blueberry

# Install a custom package 
git clone https://aur.archlinux.org/*
makepkg -s
sudo pacman -U --noconfirm *.pkg.tar.xz
