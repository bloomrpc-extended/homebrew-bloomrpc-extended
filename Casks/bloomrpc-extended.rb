cask "bloomrpc-extended" do
  version "2.1.0"
  sha256 ""

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
