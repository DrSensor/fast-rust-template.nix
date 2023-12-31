{pkgs, ...}: let
  rust-nightly = pkgs.rust-bin.selectLatestNightlyWith (toolchain: toolchain.default);
in {
  packages = with pkgs; [mold sccache];
  languages.rust.enable = true;
  languages.rust.toolchain.rustc = rust-nightly.override {
    extensions = ["rust-src" "rustc-codegen-cranelift"];
  };
}
