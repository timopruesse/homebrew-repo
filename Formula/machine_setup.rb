class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "f8c0af9b7c8c3d6d6ddbb6908e38b5c5b1ecfb5b4ec43d1e16d2046f5ba49612"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.5.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "56c1dbcfbc1f18e44f39af5b9e5a150f32b95647e0e76b80b5cb58393a4e1069"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.5.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "732209b07f6e2df062959c6acb32041f5ba64452a11401eecbfa73ed369ace0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.5.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ab91eb94a158f574bfeb555f9fc15cf3bc89f29d1f5b9cc6cf3afb733f13dd8"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
