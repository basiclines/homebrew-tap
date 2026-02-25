class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.9.0/rampa-darwin-arm64"
      sha256 "a214e86e9b4f47e51359d98ef21f3a8626fc26feef8ebe5ef906f3e0fbf47e9a"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.9.0/rampa-darwin-x64"
      sha256 "7d7bfec468d735cc530b8ea4e9be0755d10331fed70096d25e3e2824d6ee1f2f"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.9.0/rampa-linux-arm64"
      sha256 "eb8e2d3c7b933d84b545344bd979c18e4db2ca2c985baaef24509238b40c0cda"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.9.0/rampa-linux-x64"
      sha256 "1755a3ad0a20b6c4df3293ae1d29a267c4d5fc1f816f2c34fa8e0ecc46b237d9"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
