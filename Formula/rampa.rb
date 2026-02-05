class Rampa < Formula
  desc "Generate mathematically accurate color palettes from a base color"
  homepage "https://github.com/basiclines/rampa-studio"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.3/rampa-darwin-arm64"
      sha256 "0576ca0b6d3217adc649615ce75a3f53f06162819a489f36d478e237b532ef8a"

      def install
        bin.install "rampa-darwin-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.3/rampa-darwin-x64"
      sha256 "472b2e8c703c510e9d151f9148fc48f556157b6b83914ad0c274460f8ed5b46a"

      def install
        bin.install "rampa-darwin-x64" => "rampa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.3/rampa-linux-arm64"
      sha256 "235dcdaf39a9c1f6ade3e5906e17ac7ca98ab4375a9a89efc46cf485c522848d"

      def install
        bin.install "rampa-linux-arm64" => "rampa"
      end
    end

    on_intel do
      url "https://github.com/basiclines/rampa-studio/releases/download/v1.1.3/rampa-linux-x64"
      sha256 "6da544e4cb857ef9e21adcb8bb7f786f1cddc81bd7d0d7e90c4430f3aacf00e8"

      def install
        bin.install "rampa-linux-x64" => "rampa"
      end
    end
  end

  test do
    assert_match "rampa", shell_output("#{bin}/rampa --version")
  end
end
