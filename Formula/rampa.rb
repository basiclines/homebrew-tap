class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.3.1/rampa-darwin-arm64"
      sha256 "e1eae811b035b8076b10a04f359766465557a238038594917431bcc70efeb873"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.3.1/rampa-darwin-x64"
      sha256 "4b4bd1bbf27020aa01216a3e9baa71d92f48434ad04509687ec5f4c8abcb37a6"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.3.1/rampa-linux-arm64"
      sha256 "44afd55504956f9222da8c1faba35f95f57f1076616c117e336efe5358533bf9"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.3.1/rampa-linux-x64"
      sha256 "c173aa941df8ae365270776ca8c95a2269b5ceec19c50381680a27d6d1470d1f"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
