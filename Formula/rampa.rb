class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.0.0/rampa-darwin-arm64"
      sha256 "bed2486247802927a526bd9d002f3f81692a70fdd3bcb52b2c3052ed49c74dfe"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.0.0/rampa-darwin-x64"
      sha256 "633312f70a933a0de314494a651b359b90e65557be238f6b1ad8b134dc22f6bd"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.0.0/rampa-linux-arm64"
      sha256 "0bd5be2ea7b53b8a418e7304be25a96d4ef6c4ad45af3de25e74bb2865c3ca9e"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.0.0/rampa-linux-x64"
      sha256 "fbb7c402c80fc49e71a516e03a5c2ad7c540eb901f2614f0ad8a0e0f851a5b6d"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
