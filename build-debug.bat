@echo off 
cd ..
set CARGO_TARGET_DIR=target
set RUSTC_WRAPPER=
set RUST_BACKTRACE=1
:begin

echo x86_64-pc-windows-gnu
cargo +nightly build 
copy .\target\debug\material-updater.exe .\target\material-updater.exe
pause
goto :begin

echo x86_64-pc-windows-gnu
cargo +nightly build --profile release
copy .\target\release\material-updater.exe .\target\material-updater.exe
pause
goto :begin

echo x86_64-pc-windows-gnu
cargo +nightly build --target x86_64-pc-windows-gnu --profile smol
copy .\target\x86_64-pc-windows-gnu\smol\material-updater.exe .\target\material-updater.exe
pause
goto :begin

