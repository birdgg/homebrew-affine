cask "affine-canary" do
  version "0.5.4-canary.21"
  if Hardware::CPU.arm?
    sha256 "3dd0cf44992fd1bcf1e5e96a5194515f530358bb3f282bd7d2514c74889e6ba2"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "b595b4206140e230123cf63899135c46f0373ec9e40d0a08b49bf9f2edb23eea"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
