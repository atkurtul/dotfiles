use std::io::prelude::*;

fn main() {
    let args: Vec<String> = std::env::args().skip(1).collect();

    if args.len() < 2 || (args[0] != "json" && args[0] != "toml") {
        println!("Usage: ccgen [json|toml] <file>");
        return;
    }
    if args.len() > 2 {
        println!("Ignoring extra arguments {:?}", &args[2..]);
    }
    let dir = std::env::current_dir()
        .unwrap()
        .into_os_string()
        .into_string()
        .unwrap();
    let file = format!("{}/{}", dir, args[1]);
    if args[0] == "json" {
        let ff = format!("{}/compile_commands.json", dir);
        std::fs::File::create(&ff).unwrap().write_all(format!("[\n\t{{\n\t\t\"directory\":\"{}\",\n\t\t\"command\":\"/usr/bin/clang {}\",\n\t\t\"file\":\"{}\"\n\t}}\n]",dir, file, file).as_bytes());
        println!("Wrote {}", ff);
    } else {
        let ff = format!("{}/Cargo.toml", dir);
        let package = args[1]
            .split(".")
            .collect::<Vec<_>>()
            .into_iter()
            .rev()
            .skip(1)
            .rev()
            .collect::<Vec<_>>()
            .join("");
        std::fs::File::create(&ff).unwrap().write_all(
            format!(
                "[package]\nname=\"{0}\"\nversion=\"0.0.0\"\n\n[[bin]]\nname=\"{0}\"\npath=\"{1}\"",
                package, file
            )
            .as_bytes(),
        );
        println!("Wrote {}", ff);
    }
}
