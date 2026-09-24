use winapi::um::winuser::MessageBoxA;
use std::ptr;

fn main() {
    unsafe {
        MessageBoxA(
            ptr::null_mut(), // HWND
            "Hello, World!\0".as_ptr() as _, // LPCTSTR
            "Rust Message\0".as_ptr() as _,  // LPCTSTR
            0x00000040, // MB_ICONINFORMATION | MB_OK
        );
    }
}