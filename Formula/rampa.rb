class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.5.1/rampa-darwin-arm64"
      sha256 "1c61b8f8554cc399ac5b45fa55d15c90cbb5ea34739e7eb79732a8084a425187"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.5.1/rampa-darwin-x64"
      sha256 "288221ce399bc37cbb78a03dd8820bd310019cc91aa468fcbe4a020b3ba330be"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.5.1/rampa-linux-arm64"
      sha256 "c3b72881cabf6844ebf548e56f76aff3998d1f57d99f04b26b5f98f06c9b0f45"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.5.1/rampa-linux-x64"
      sha256 "1194128ca837cd5fd2d734cc82b7405d57581b37ec6235cac2eb9dc00be54ead"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
