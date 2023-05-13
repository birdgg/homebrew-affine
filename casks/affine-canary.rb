cask "affine-canary" do
  version "0.6.0-canary.1"
  if Hardware::CPU.arm?
    sha256 "186170e98af1512ef38592a570ac509967840f66dc8488f9ebec134cbbacb772"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "350176e0bcf2ae188cdb2fa757ab762fb393357913c224028007f2c69c4f1cdd"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
