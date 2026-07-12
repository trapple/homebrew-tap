cask "3dgs-quicklook" do
  version "1.0.0"
  sha256 "10541818b1bcd490916ace428eb7b4224b309cd5eaa586f9bd78b4d6e96211ca"

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
