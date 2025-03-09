# Setup script to get all needed packages for building on Arch-based distros
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
yay -Syyuu android-devel wget repo less vi 
