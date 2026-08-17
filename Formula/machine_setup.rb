class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.8.0.tar.gz"
  sha256 "c569d18ee7d0492ef9cfdf0de94a70dc79251230728dc027809bbef88692da8e"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.8.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "90b64fb4527397a3b52dcc32e8e87f88280f8eaceb8ec32c07a9f90200a6207b"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.8.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "492490c5ef61d8274b3222ba5a3adb614e9c2ada8910c10f05f222d806fd141d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.8.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f57e89577a4a0c365beb4e4972d90d7ccf6a76ea2af895f91292265583bde55a"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
