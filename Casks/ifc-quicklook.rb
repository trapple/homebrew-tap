cask "ifc-quicklook" do
  version "1.0.3"
  sha256 "bf2d8cf038d7fd2d99354f847c5e67f2150398f53c4fd5c2ebdfb00ef83d20ef"

  url "https://github.com/trapple/ifc-quicklook/releases/download/v#{version}/IFCQuickLook-#{version}.zip"
  name "IFC Quick Look"
  desc "Quick Look extension for IFC (BIM) files"
  homepage "https://github.com/trapple/ifc-quicklook"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "IFCQuickLook.app"

  caveats <<~EOS
    To register the Quick Look extension, launch the app once:
      open /Applications/IFCQuickLook.app

    If existing .ifc files don't preview (indexed before install),
    reimport them with: mdimport <folder>
  EOS

  zap trash: [
    "~/Library/Containers/jp.trapple.IFCQuickLook.IFCPreview",
  ]
end
