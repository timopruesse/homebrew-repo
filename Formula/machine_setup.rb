class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.6.0.tar.gz"
  sha256 "38d27341d3658afc98a900c6e2d5f05365958307fd526104d7a005febd06aad3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.6.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "47536331e48f71413714bcfbbc81643298d86c4fe1d4dac32467251ff53462d1"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.6.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "310420e8f77fc69096ea28c6e6e82287fc71722bf81790405a9336e937a0d831"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.6.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4548ad25f6293e24e75af5dca11fab2e83ce85a288a30542604713fa252938ba"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
