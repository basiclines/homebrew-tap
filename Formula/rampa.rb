class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.0.1/rampa-darwin-arm64"
      sha256 "7adf084a934c7e99b3be3917fe30690ba45d846ceff4a857e77a73d755e5c13f"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.0.1/rampa-darwin-x64"
      sha256 "cb7642af5aa54891a6f8b4beeeea1b023aabff0526a0486c79eeb8db29f6e188"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.0.1/rampa-linux-arm64"
      sha256 "80f0d6bae0a4f60ece67ab0e88a64fe7ed5fe951c90352663160e79dc6666805"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.0.1/rampa-linux-x64"
      sha256 "c95bcd6607ce76dd861b8ef28d959191814c1c4e8e8ac2e3ab3ccdccdb247c26"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
