cask "affine-canary" do
  version "0.7.0-canary.24"
  if Hardware::CPU.arm?
    sha256 "a84b486e9f7f5f60a30065eca803b90acf26929079c7fa8902098e5bde480131"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "c60af9577974820e7adffc80f3ed29ec8c3ee1d62a690bba9324caef8c156ab0"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
