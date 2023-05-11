cask "affine-canary" do
  version "0.5.4-canary.30"
  if Hardware::CPU.arm?
    sha256 "6f4d04270d59a036d018cb6083cff4fe865bff41f6d92da335b090da5832c0f6"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "2c6c79c1cbb173bb1d4f4c7ba8ee0918b9b7c090e378e5c9e15731fc2403568f"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
