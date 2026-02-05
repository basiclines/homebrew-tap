class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.2/rampa-darwin-arm64"
      sha256 "ac4f8a48877a69cce89dacf19b7bc40f354fbc26ee37a39c781303a7aa30703f"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.2/rampa-darwin-x64"
      sha256 "18608fec9ebd1a34b6b019102efd763a804f51a94678eafcff570723c81415ce"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.2/rampa-linux-arm64"
      sha256 "60a9b9d5c5cab7e0f8f8ab6ea34b75c890cba62a2a23bdf2428e954e4249e8b5"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.2/rampa-linux-x64"
      sha256 "8866b82018583592add3864b9c8cf1017a289958f27eecdec27ea46147d819cf"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
