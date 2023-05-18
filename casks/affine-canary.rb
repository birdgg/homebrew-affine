cask "affine-canary" do
  version "0.6.0-canary.4"
  if Hardware::CPU.arm?
    sha256 "e44e046f26742829659e9f70c0d38a36af73f15cc91652069ae005f017102d16"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "4559ba078c30df4e13baf10e1336f4bbae0dae357d5a5dd98e0ab469d4605e33"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
