cask "3dgs-quicklook" do
  version "1.1.0"
  sha256 "e01395ffb9a32256565ee7048dd34dd82502f2612282965232c3469ca0616833"

  url "https://github.com/trapple/3dgs-quicklook/releases/download/v#{version}/SPZQuickLook-#{version}.zip"
  name "3DGS Quick Look"
  desc "Quick Look extension for 3D Gaussian Splatting (.spz) files"
  homepage "https://github.com/trapple/3dgs-quicklook"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "SPZQuickLook.app"

  caveats <<~EOS
    To register the Quick Look extension, launch the app once:
      open /Applications/SPZQuickLook.app
  EOS

  zap trash: [
    "~/Library/Containers/jp.trapple.SPZQuickLook",
    "~/Library/Containers/jp.trapple.SPZQuickLook.PreviewExtension",
  ]
end
