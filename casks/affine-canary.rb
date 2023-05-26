cask "affine-canary" do
  version "0.7.0-canary.0"
  if Hardware::CPU.arm?
    sha256 "e6f078c1d1b1c60a90ecf0238d2fcdf4a3b3c1e80a26ca41ab865e63139667c8"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "56532378585ac9df6b6566c6e2d39fbe96a00396ade85e7207bb83567e706874"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
