{pkgs, ...}: {
  packages = with pkgs; [mold sccache];
  languages.rust.enable = true;
  languages.rust.toolchain.rustc = pkgs.rust-bin.stable.latest.default;
}
