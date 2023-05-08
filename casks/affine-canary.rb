cask "affine-canary" do
  version "0.5.4-canary.26"
  if Hardware::CPU.arm?
    sha256 "257f2de08c17e575daf13346c295792291b6d55cbef9633e1706cdb0e33f6ef3"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "299a1a424c3fdf9aaca30be3be99fdbfe7b9560f51c1d3c2905b1b98de7a9b59"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
