class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.4.0/rampa-darwin-arm64"
      sha256 "7d62ca14e38e936714b4715ec864b89ea51d5258dc5a0a1cef917c11436cfc61"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.4.0/rampa-darwin-x64"
      sha256 "7c13ead4bfc9265f64333740b9a7cc7efc987ef8ac6e2fc6330326d241b7e879"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.4.0/rampa-linux-arm64"
      sha256 "efcfce590a66e73083471f7646d5aaf27f765445a13cba2baa2557aef928964b"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.4.0/rampa-linux-x64"
      sha256 "b1d4e265cd7ebae7efdbce20ad341ebec5ce25816289f372cfa5ca5a3eb5d2ab"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
