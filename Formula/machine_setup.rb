class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.4.5.tar.gz"
  sha256 "1a0c8eeba909ae6192de1c800c73d4c58ad2947d16899ebc791d9ace44a358b0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.5/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "11428d8d77cd898d60d6d98e21afb4455b75b77840a0340026be196a6b51ff59"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.5/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "af5667487978e8a160b1b1c7858e315b2fb7a982dcbb7d8b82302915ba2e3482"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.5/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d820775764e09e77f575d4563cd1c76e04e4de61a444cc722eae870018f888c"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
