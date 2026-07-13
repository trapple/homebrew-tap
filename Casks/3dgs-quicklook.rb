cask "3dgs-quicklook" do
  version "1.2.0"
  sha256 "f23c54112e5322a8ffed595dc0d88cd649a680ff7aa07f9a110b501aac2a7bfb"

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
