cask "bloomrpc-extended" do
  version "2.2.1"
  sha256 "a19f4aa609cc0a4251b8c5c0fe6faefef1c69132dc3a12f0558d370e8fe9288c"

  url "https://github.com/bloomrpc-extended/bloomrpc-extended/releases/download/v#{version}/BloomRPC-Extended-#{version}-arm64.dmg"
  name "BloomRPC Extended"
  desc "GUI client for gRPC services"
  homepage "https://github.com/bloomrpc-extended/bloomrpc-extended"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "BloomRPC Extended.app"

  zap trash: [
    "~/Library/Application Support/BloomRPC Extended",
    "~/Library/Preferences/io.github.bloomrpc-extended.BloomRPCExtended.plist",
  ]
end
