# Run in a separate folder 
# Init ROM source with --depth=1 to save disk space and internet data
repo init -u https://github.com/crdroid-security/android.git -b 11.0 --git-lfs --depth=1
# Sync ROM source
repo sync
# Device tree 
git clone https://github.com/Xiaomi-SM6225-fog-development/android_device_xiaomi_fog-11.git device/xiaomi/fog
# Kernel headers for prebuilt MIUI kernel
git clone --depth=1 https://github.com/dblenk-project/kernel_xiaomi_fog_header.git kernel/xiaomi/fog
# Vendor tree 
# TODO: Move vendor tree to Xiaomi-SM6225-fog-development
git clone --depth=1 https://github.com/develux44/vendor_xiaomi_fog-11.git vendor/xiaomi/fog
# hardware/xiaomi
git clone --depth=1 -b 11.0 https://github.com/crdroidandroid/android_hardware_xiaomi.git hardware/xiaomi
# Signed build
wget https://raw.githubusercontent.com/306bobby-android/crDroid-build-signed-script/main/create-signed-env.sh
chmod +x create-signed-env.sh
./create-signed-env.sh
# envsetup for build system
. build/envsetup.sh
# "user" build 
brunch fog user
