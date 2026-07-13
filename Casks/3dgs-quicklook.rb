cask "3dgs-quicklook" do
  version "1.2.2"
  sha256 "fafc46864349c48a68f74456b3a74f769413ab10f2056fbfca361357284af635"

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
