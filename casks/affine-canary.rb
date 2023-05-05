cask "affine-canary" do
  version "0.5.4-canary.24"
  if Hardware::CPU.arm?
    sha256 "13c6b597ce6be927fabfccf0713f75dc3bdae637a7108660368001102c09dee0"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "2cc086acbd2304627433bff95c0d30a8dc6949051ecfdc1976c5cb36f1866d17"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
