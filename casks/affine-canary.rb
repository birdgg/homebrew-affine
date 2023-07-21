cask "affine-canary" do
  version "0.7.0-canary.49"
  if Hardware::CPU.arm?
    sha256 "c5622e9d6c48a3bad95fff52c236a3cef81f1bc3aadcf57b6ea3ae3f540182b2"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "95fb763f56d64bb98d17585fb86414c6ba520977a2a5f2a95f02b533c61335b6"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
