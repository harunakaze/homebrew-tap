# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OptimusPluginsOdpf < Formula
  desc "Optimus Plugins for warehouse"
  homepage ""
  version "0.1.6"
  license "Apache 2.0"

  depends_on "odpf/taps/optimus"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/transformers/releases/download/v0.1.6/transformers_0.1.6_macos_x86_64.tar.gz"
      sha256 "58ede53ed0857c9b5bad2f9578f8e502589db062595eb5e1cbd3fc6993c4fb34"

      def install
        bin.install Dir["optimus-*"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/transformers/releases/download/v0.1.6/transformers_0.1.6_macos_arm64.tar.gz"
      sha256 "26d6c6646231fd7c3961f28ac48cda9b81a597e1cb4edac2d8772e3ae7d03b2b"

      def install
        bin.install Dir["optimus-*"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/transformers/releases/download/v0.1.6/transformers_0.1.6_linux_arm64.tar.gz"
      sha256 "adccde26f4497c39421a2fd783709242c184b1e4dd6f7ffcce48a2b80d6afbe7"

      def install
        bin.install Dir["optimus-*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/transformers/releases/download/v0.1.6/transformers_0.1.6_linux_x86_64.tar.gz"
      sha256 "109d57438d358b0762b74496446667a67270dc13977ecb92fbc7392db891d79e"

      def install
        bin.install Dir["optimus-*"]
      end
    end
  end
end
