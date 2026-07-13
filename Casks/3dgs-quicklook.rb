cask "3dgs-quicklook" do
  version "1.2.1"
  sha256 "ee5c7f3dc517bd56d144c3097fa49b6f6d771ae343ec9d7a56ba3428ab10b7b4"

  url "https://github.com/trapple/3dgs-quicklook/releases/download/v#{version}/SPZQuickLook-#{version}.zip"
  name "3DGS Quick Look"
  desc "Quick Look extension for 3D Gaussian Splatting (.spz) files"
  homepage "https://github.com/trapple/3dgs-quicklook"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "SPZQuickLook.app"
  binary "#{appdir}/SPZQuickLook.app/Contents/Helpers/ply2spz"

  caveats <<~EOS
    To register the Quick Look extension, launch the app once:
      open /Applications/SPZQuickLook.app
  EOS

  zap trash: [
    "~/Library/Containers/jp.trapple.SPZQuickLook",
    "~/Library/Containers/jp.trapple.SPZQuickLook.PreviewExtension",
  ]
end
