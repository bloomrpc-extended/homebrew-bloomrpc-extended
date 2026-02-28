cask "bloomrpc-extended" do
  version "2.1.2"
  sha256 "0ac93384b62daa3f2a7939fcac7542d6c6a124c6c4bdf500708f9534897db435"

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
