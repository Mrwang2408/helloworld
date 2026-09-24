# helloworld
setup build evironment


hello_world
cargo build --profile release

hello-toast
cargo +nightly build --target aarch64-linux-android --profile smol -Z build-std=std,panic_abort

hello_xmake
%ANDROID_NDK_HOME% = 
xmake f -p android -a arm64-v8a -m release
xmake 

hello_cmake
mkdir build
cd build
cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release ..
cmake --build .

rust-win32-hello
cargo build --target x86_64-pc-windows-gnu --profile release















