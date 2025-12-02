/*
  Please read with carefully...
  This is default setup rust cli application for Linux Operating System in Google Colab.
  Google Colab is using Ubuntu for their distribution.
  Please copy this text and put them into your colab's cell, and run it :D!
*/

%%shell
curl -fsSL https://sh.rustup.rs/install | bash -s -- -y
. "$HOME/.cargo/env"
cargo new clap-app

%cd clap-app

%%writefile Cargo.toml
[package]
name = "clap-app"
version = "0.1.0"
edition = "2021"

[dependencies]
clap = "4.0"
yansi = "1.0.0"

%%shell
cargo build
cargo run -- --sapa . --nama "Ahmad Daniar" --umur 16 --alamat "Boyolali, Jawa Tengah"
