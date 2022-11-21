# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uncors < Formula
  desc "A simple dev HTTP/HTTPS reverse proxy for replacing CORS headers."
  homepage "https://github.com/evg4b/uncors"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8/uncors_0.0.8_darwin_amd64.tar.gz"
      sha256 "91fcd552bb95f13bc92a682af11efa265183709cccaf48c08a2a2598c7545224"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8/uncors_0.0.8_darwin_arm64.tar.gz"
      sha256 "8e882a1322b032a852a00ee2fb5d2ff000c2ad955c441d00ca29dbccee44575c"

      def install
        bin.install "uncors"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8/uncors_0.0.8_linux_amd64.tar.gz"
      sha256 "adb29780817698bed7e934d6aab0909dc5610b7024baa5c63623f2b4d50c4e2c"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8/uncors_0.0.8_linux_armv6.tar.gz"
      sha256 "ce7d501173c8a2e3f9a693cf53c65a2220dee6c776766ffeeb14460a997d1238"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8/uncors_0.0.8_linux_arm64.tar.gz"
      sha256 "45480865501416feff6579fea211d909a420db904e64edb6048141809f8354e1"

      def install
        bin.install "uncors"
      end
    end
  end

  test do
    system "#{bin}/uncors", "--help"
  end
end
