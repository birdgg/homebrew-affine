cask "affine-canary" do
  version "0.6.0-canary.0"
  if Hardware::CPU.arm?
    sha256 "f5755860af44b21a56653c2d43749038bb26ac8f004b58c18e2f011dfaf2ad55"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "66942e6b3791625628a23b74427b8286b4de54b496518b4236954f2ae747c230"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
