cask "affine-canary" do
  version "0.5.4-canary.22"
  if Hardware::CPU.arm?
    sha256 "0462348a425d0b41f68c099df1b8802b5142c460b6b56c7d29cf3f75a68a445f"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "4533cf1a87e4d9c2a46d8898bc8c9820fc20b882e61d11b7c7a62855704fadb7"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
