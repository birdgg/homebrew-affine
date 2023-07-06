cask "affine-canary" do
  version "0.7.0-canary.36"
  if Hardware::CPU.arm?
    sha256 "ee31109b71283ac28300331578ac1fb86b6357d60bd2b120515e0f0644464bd9"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "04ea13bf9a625aab6779c5bdc7cc274f0dae5ede391caf03b25d810ad739a0e6"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
