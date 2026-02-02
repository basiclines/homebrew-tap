class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.0/rampa-darwin-arm64"
      sha256 "02691c0dbb9e593d0e61e0c7e92fb31e001b94747b756145dfe1d3fbb738eaab"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.0/rampa-darwin-x64"
      sha256 "055048945a46dcb19ecc85a8d1e518a12872eeb4ee677aa4157282b0b0d45967"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.0/rampa-linux-arm64"
      sha256 "161b9552097a853bb790858af03924b5119361e0de5aa83b67d6bfd290e1d7a2"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.0/rampa-linux-x64"
      sha256 "75bcf5559e46ff2d4724c128a4a4624b8184589f3e406b980989a8c4354d3eb4"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
