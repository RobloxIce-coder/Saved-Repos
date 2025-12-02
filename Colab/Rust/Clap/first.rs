%%writefile src/main.rs
use clap::{Arg, Command};
use yansi::{Paint};

fn main() {
   let matches = Command::new("Aplikasi Rust Cli")
      .version("0.1.0")
      .author("Ahmad Daniar")
      .about("Ini adalah contoh aplikasi CLI rust sederhana :D!")
      .arg(
          Arg::new("sapa")
             .short('s')
             .long("sapa")
             .help("Menyapa kepada user"),
      )
      .arg(
          Arg::new("nama")
             .short('n')
             .long("nama")
             .value_name("NAMA")
             .help("Menggunakan argumen nama")
      )
      .arg(
          Arg::new("umur")
             .short('u')
             .long("umur")
             .value_name("UMUR")
             .help("Menggunakan argumen umur")

      )
      .arg(
          Arg::new("alamat")
             .short('a')
             .long("alamat")
             .value_name("ALAMAT")
             .help("Menggunakan argumen alamat")
      )
      .get_matches();

  if matches.contains_id("sapa") {
     println!("{}", "Halo Rustacean😁🙏".green().bold());
  }
  if let Some(nama) = matches.get_one::<String>("nama") {
     println!("{} {}", "Nama kamu:".blue(), nama.yellow());
  }
  if let Some(umur) = matches.get_one::<String>("umur") {
     println!("{} {} {}", "Umur kamu:".blue(), umur.yellow(), "tahun".yellow());
  }
  if let Some(alamat) = matches.get_one::<String>("alamat") {
     println!("{} {}{}", "Alamat kamu di:".blue(), alamat.yellow(), ".".blue());
  }
  println!("{}", "Selamat😁🎉!".underline().italic());
}
