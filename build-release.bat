@echo off 
cd ..
:begin
set PROJECT=mtbinloader2
set TARGET=mbl2
goto arm64-v8a



:arm64-v8a
echo aarch64-linux-android

cargo +nightly build --target aarch64-linux-android --profile release

copy E:\RenderDragon\REPO\.cargo\target\aarch64-linux-android\release\deps\lib%PROJECT%.so .\target\lib%TARGET%.so
pause
goto :begin



:armeabi-v7a
echo arm-linux-androideabi

cargo +nightly build --target armv7-linux-androideabi --profile release

copy E:\RenderDragon\REPO\.cargo\target\armv7-linux-androideabi\release\deps\lib%PROJECT%.so .\target\lib%TARGET%-arm.so
pause
goto :begin


