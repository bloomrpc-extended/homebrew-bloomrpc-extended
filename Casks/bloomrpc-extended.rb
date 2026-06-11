cask "bloomrpc-extended" do
  version "2.2.0"
  sha256 "9ade434100df1e34c2c5bba4f3014994f19ebc29ad268aa765c86d33921a2771"

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
