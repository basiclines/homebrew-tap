class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.1/rampa-darwin-arm64"
      sha256 "56b58568d4fd87789e72200fecb49940dd71c538d5171b2d8690f317e5d5ee4e"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.1/rampa-darwin-x64"
      sha256 "d842b67b99b6d5e550d11baa95d38af9ede499e77e5c540643842de5899f0bbf"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.1/rampa-linux-arm64"
      sha256 "92d8fca993941e8503ed1bf274093af34f75b66a4f7482bc142f9ced5eea1bd5"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.1/rampa-linux-x64"
      sha256 "f3c1464964b354cef3af7adceeb871748ecaa1fac40e90af2391d63ec67da782"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
