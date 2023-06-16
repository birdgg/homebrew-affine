cask "affine-canary" do
  version "0.7.0-canary.18"
  if Hardware::CPU.arm?
    sha256 "b031d3cbbb9380a46871a2e53c3daf166db70e7646b75c2e3156e117b61c5040"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "b52f3b77711a26d2583f9c800831bd416b6b73da86ee36a93fe7d9100673e348"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
