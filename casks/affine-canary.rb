cask "affine-canary" do
  version "0.6.0-canary.6"
  if Hardware::CPU.arm?
    sha256 "f13be214a3c782a96994228e59c2be42f4d9214364e7c6b70dc1fced703862f2"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "6e3864c223a7d3150c22fd05d0b51e7f2b617cc88d81ac0f8d9d52cf8e3cb158"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
