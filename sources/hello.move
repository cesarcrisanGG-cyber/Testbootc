module 0x0::hello {

    use std::string::{String, utf8};
    use std::debug::print;

    public fun hello() {
        let msg: String = utf8(b"Hello, Sui!");
        print(&msg);
    }
}

