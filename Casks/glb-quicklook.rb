cask "glb-quicklook" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/trapple/glb-quicklook/releases/download/v#{version}/GLBQuickLook-#{version}.zip"
  name "GLB Quick Look"
  desc "Quick Look extension for glTF Binary (.glb) files"
  homepage "https://github.com/trapple/glb-quicklook"

  depends_on macos: ">= :sequoia"

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
