cask "ifc-quicklook" do
  version "1.0.2"
  sha256 "9347ec3af2d7e6f1e22e0375eb5ab8dc698321bbdf7f8c27623abd47456363d1"

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
