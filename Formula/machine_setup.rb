class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.4.3.tar.gz"
  sha256 "c298ee0a865d2997785284351086bf0ee5a73c022d80b2eaa199bd271b82fd3e"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.3/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "755fa51d72258e510c636b44402878a43ea267fb0bb6c5d6b2dcf39fa5ef43c7"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.3/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "993ded64f434223ad44e8d082fd6a534cc677ff686b7ec2143559bee45c5badc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.3/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4940d16f8ace01e258116b1bdbad31606272e1d2185171450a4fb112cace956e"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
