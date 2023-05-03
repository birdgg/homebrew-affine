cask "affine-canary" do
  version "0.5.4-canary.20"
  if Hardware::CPU.arm?
    sha256 "ad07480372d5c1b849766a3e377ca94386f64dbcd5185ce531d91056f8e60240"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "86394dbf95a587ae914b03223abd2c237dd5da16f6958896fd0acb8cfc04283e"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
