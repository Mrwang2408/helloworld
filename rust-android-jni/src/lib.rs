use jni::{
    objects::JValue,
    sys::{jint, JNI_VERSION_1_6},
    JavaVM,
};

fn show_toast(vm: &JavaVM, msg: &str) -> jni::errors::Result<()> {
    let env = &mut vm.get_env()?;
    let context = env
        .call_static_method(
            "android/app/ActivityThread",
            "currentApplication",
            "()Landroid/app/Application;",
            &[],
        )?
        .l()?;
    let text = env.new_string(msg)?;
    let toast = env
        .call_static_method(
            "android/widget/Toast",
            "makeText",
            "(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;",
            &[(&context).into(), (&text).into(), JValue::Int(0)],
        )?
        .l()?;
    env.call_method(toast, "show", "()V", &[])?;
    Ok(())
}

#[no_mangle]
pub extern "system" fn JNI_OnLoad(vm: JavaVM, _: *mut std::ffi::c_void) -> jint {
    let _ = show_toast(&vm, "hello world");
    JNI_VERSION_1_6
}