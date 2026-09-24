@echo off 
cd ..
:begin

echo x86_64-pc-windows-gnu
cargo +nightly build --profile release
rem copy .\target\release\material-updater.exe .\target\material-updater.exe
copy E:\RenderDragon\REPO\.cargo\target\release\material-updater.exe .\target\material-updater.exe

pause
goto :begin

echo x86_64-pc-windows-gnu
cargo +nightly build --target x86_64-pc-windows-gnu --profile smol
copy .\target\x86_64-pc-windows-gnu\smol\material-updater.exe .\target\material-updater.exe

pause
goto :begin

