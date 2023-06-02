cask "affine-canary" do
  version "0.7.0-canary.8"
  if Hardware::CPU.arm?
    sha256 "213d9214fb7aae5c7a87df6744ce3f8d9073e91d3c7c49bbf71ca509fe0fb6c4"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "da386632b01edc3958ea9502ffcd688d8f96540e45cb511a9d44ef7a3b49261d"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
