cask "glb-quicklook" do
  version "1.0.0"
  sha256 "bcd8d4a6732768084bb9f204812ec4948ee63f7255c550a1b3e3c01705cb1d6d"

  url "https://github.com/trapple/glb-quicklook/releases/download/v#{version}/GLBQuickLook-#{version}.zip"
  name "GLB Quick Look"
  desc "Quick Look extension for glTF Binary (.glb) files"
  homepage "https://github.com/trapple/glb-quicklook"

  depends_on macos: :sequoia

  app "GLBQuickLook.app"

  caveats <<~EOS
    To register the Quick Look extension, launch the app once:
      open /Applications/GLBQuickLook.app
  EOS

  zap trash: [
    "~/Library/Containers/jp.trapple.GLBQuickLook",
    "~/Library/Containers/jp.trapple.GLBQuickLook.PreviewExtension",
  ]
end
