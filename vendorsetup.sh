# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Looking for changes in device tree"
cd device/xiaomi/vayu && git pull && cd ../../..
echo ""


if [[ -d "device/xiaomi/sm8150-common" ]]; then
echo ""
echo "Looking for changes in common device tree"
cd device/xiaomi/sm8150-common && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/lineage_device_xiaomi_sm8150-common.git device/xiaomi/sm8150-common
echo ""
fi

# Vendor Tree
if [[ -d "vendor/xiaomi/vayu" ]]; then
echo ""
echo "Looking for changes in vendor tree"
cd vendor/xiaomi/vayu && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/lineage_vendor_xiaomi_vayu.git vendor/xiaomi/vayu
echo ""
fi

if [[ -d "vendor/xiaomi/sm8150-common" ]]; then
echo ""
echo "Looking for changes in common vendor tree"
cd vendor/xiaomi/sm8150-common && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/lineage_vendor_xiaomi_sm8150-common.git vendor/xiaomi/sm8150-common
echo ""
fi

# Kernel Tree
if [[ -d "kernel/xiaomi/vayu" ]]; then
echo ""
echo "Looking for changes in kernel tree"
cd kernel/xiaomi/vayu && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/Jebaitedneko/android_kernel_xiaomi_vayu.git -b r2 kernel/xiaomi/vayu
echo ""
fi

# Hardware Tree
if [[ -d "hardware/xiaomi" ]]; then
echo ""
echo "Looking for changes in hardware tree"
cd hardware/xiaomi && git pull && cd ../..
echo ""
else
echo ""
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi
echo ""
fi

# Mi Parts
if [[ -d "vendor/xiaomi/devicesettings" ]]; then
echo ""
echo "Looking for changes in MiParts Repo"
cd vendor/xiaomi/devicesettings && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/vendor_xiaomi_device_settings.git vendor/xiaomi/devicesettings
echo ""
fi

# Google Camera
if [[ -d "vendor/Gcam" ]]; then
echo ""
echo "Looking for changes in GCam Repo"
cd vendor/Gcam && git pull && cd ../..
echo ""
else
echo ""
git clone https://gitlab.com/sanjeevstunner/vendor-g-cam-bsg.git vendor/Gcam
echo ""
fi

# Pixel Launcher MOD
if [[ -d "vendor/pixel/launcher" ]]; then
echo "Looking for changes in Pixel Launcher MOD Repo"
cd vendor/pixel/launcher && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/vendor_pixel_launcher.git vendor/pixel/launcher
echo ""
fi
