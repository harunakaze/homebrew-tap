# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/odpf/guardian"
  version "0.3.5"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.3.5/guardian_0.3.5_macos_x86_64.tar.gz"
      sha256 "fb6146aad0f2fa9c447e7e982be85d435e06435b674a781419d045eff51688c6"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.3.5/guardian_0.3.5_macos_arm64.tar.gz"
      sha256 "cb1932faf66383d45907d33e651742bf02f4b521f2b9cab0f90c4aeb748e47d1"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.3.5/guardian_0.3.5_linux_armv6.tar.gz"
      sha256 "f7e16f3b2cd67c4155646aedeb16dba8bbfd0877179fd0f78671c99719d7a9c6"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.3.5/guardian_0.3.5_linux_x86_64.tar.gz"
      sha256 "7c29940f5d881630fcfc39f451179acc5b65f49224ad6ec550cc30364c517533"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.3.5/guardian_0.3.5_linux_arm64.tar.gz"
      sha256 "084f65fbc54e609640968d437c88c3622e6e5932d42a63805127843b702f926d"

      def install
        bin.install "guardian"
      end
    end
  end

  depends_on "git"
end
