cask "bloomrpc-extended" do
  version "2.1.1"
  sha256 "4711863e70549ca3a7ef8b676de371ef2a4a70e47dbebeb1652d21f7a1636cce"

  url "https://github.com/ahmethakanbesel/bloomrpc-extended/releases/download/v#{version}/BloomRPC-Extended-#{version}-arm64.dmg"
  name "BloomRPC Extended"
  desc "GUI client for gRPC services"
  homepage "https://github.com/ahmethakanbesel/bloomrpc-extended"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "BloomRPC Extended.app"

  zap trash: [
    "~/Library/Application Support/BloomRPC Extended",
    "~/Library/Preferences/io.github.ahmethakanbesel.BloomRPCExtended.plist",
  ]
end
