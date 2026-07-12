cask "ifc-quicklook" do
  version "1.0.0"
  sha256 "c90aee207a8527968547a95ae63a19620e7122ec79d0d1b3f3e65417859797d1"

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
