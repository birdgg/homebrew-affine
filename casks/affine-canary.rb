cask "affine-canary" do
  version "0.5.4-canary.25"
  if Hardware::CPU.arm?
    sha256 "df4e2abce73e73f11209096d05a5e87f52391270a8eb12f29a460768fe774ac1"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "274d860834579bed78d90dcbe99ccad105e8334b04c358764faeee191dc76ee9"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
