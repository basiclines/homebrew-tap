class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v3.0.0/rampa-darwin-arm64"
      sha256 "00c82a78835837a035f846d54fcb7265890099252f5267c33d744cb45377e3b0"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v3.0.0/rampa-darwin-x64"
      sha256 "f7c8501bf8c15042c72c1e991d558ee8e1ffe271b27ebf05f0b49a8003747c9b"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v3.0.0/rampa-linux-arm64"
      sha256 "b73d17d66ef5cd9eb80d7fb5b7c5a01cc4f62068f9e14826642c4182cb02a3c3"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v3.0.0/rampa-linux-x64"
      sha256 "5ffdf239219647661cb862a23824958fb54b2ff1a648964980c5ead534c731ca"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
