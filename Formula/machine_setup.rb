class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.11.0.tar.gz"
  sha256 "07f66565ff69bf5c3f22475fc57408905e0c7a13a5bc0c8729c8d2f612ae9a57"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.11.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "c16d98cf86e10271f28128e6d70bdeec77cad5280a343cefb13ab80be7d9bab6"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.11.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "8e1a5d09859fe7fb461ffefc36367cc780e9b03ebfb545796a4180e7e0678fca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.11.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a197c4d1c89cf912754c4232ce036963ad2fb72dba0484b7be847ac62ba87314"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
