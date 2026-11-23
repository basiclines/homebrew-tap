class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "7.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v7.0.0/rampa-darwin-arm64"
      sha256 "9ba5aef21022315bdc4de4b6cd7f0dd1e68517a931aff654dd720829cd9b2844"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v7.0.0/rampa-darwin-x64"
      sha256 "345b7a9a90806db2f42fbc3d64249d69b9112c9a31b75f780320afafdb1e5a58"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v7.0.0/rampa-linux-arm64"
      sha256 "ac1a3b4684e236bffc7aacc2fe2889bad55289875633720338cdaebd82379e46"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v7.0.0/rampa-linux-x64"
      sha256 "cae780f6d871d7971cfdfaac04783d4bcbcc3c3a165a22809dde02b8846423f4"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
