class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.7.0.tar.gz"
  sha256 "5139248a80a8a08222c2e6a75785b9c2e16fa49e8ef610ff87a43b026b20fc46"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "5aaff18b65f21e221e20076c799cacb691703100bec187ff0ceee789bb7e3046"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "b97e918cdf02b6072b91313495993930ace6299e6a387d1eae90cc6f35471483"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7916c2601130ca1e3588af5896db2d5f3a8164447bfbbf693ef543b13fb08281"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
