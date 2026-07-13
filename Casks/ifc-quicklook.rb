cask "ifc-quicklook" do
  version "1.0.1"
  sha256 "cfc4a0c30f89c34a01cca30c060d364dac0268c20bc663c83b410119d6709b9c"

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
