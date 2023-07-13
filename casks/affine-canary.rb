cask "affine-canary" do
  version "0.7.0-canary.43"
  if Hardware::CPU.arm?
    sha256 "5f4ad62ebcfa39de6310da0e371a7e2884d0b82942c89e85cad43c0530824854"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-arm64.dmg"
  else
    sha256 "26e98cd4acb59794759532f71de0ad934555aad4779c7933caf68d1df685c6f2"
    url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-canary-macos-x64.dmg"
  end

  name "AFFiNE"
  homepage "https://github.com/toeverything/AFFiNE"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AFFiNE-canary.app"
end
