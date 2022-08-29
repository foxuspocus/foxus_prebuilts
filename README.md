# 🏵 Foxus Prebuilts

The __foxus_prebuilts__ repository contains prebuilt dependencies required for building [Foxus](https://github.com/) and [GD Foxus](https://github.com/cryptovoxels/gd_foxus). The following scripts can be used:

- ```checkout.sh``` - Clones the necessary source code repositories.
- ```build_foxus_profiler.sh``` and ```build_foxus_profiler_android.sh```: Builds the Foxus profiler for the host system and for Android.
- ```build_jpegturbo.sh``` and ```build_jpegturbo_android.sh```: Builds libjpegturbo for the host system and for Android.
- ```build_libusb.sh```: Builds libusb.
- ```build_libuvc.sh```: Builds libuvc.
- ```build_opencv.sh``` and ```build_opencv_android.sh```: Builds OpenCV for the host system and for Android.

For the Android builds, the build script tries to find the location of the Android SDK. If it fails to do so, it can be set manually with the ```ANDROID_SDK_ROOT``` environment variable.

The build output will be generated at ```./<library-name>/<platform>```.