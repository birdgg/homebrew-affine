cask "affine-canary" do
  version "0.7.0-canary.44"
  if Hardware::CPU.arm?
    sha256 "2cea1c674e0397bc33341689d67bc5616dae8b5605969b1b2fca3c2f91c88f16"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "48cc024cef80974da4c0ed788b78ef0d4cd49755e05cdc577e426f057dafab80"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
