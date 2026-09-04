class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.9.0.tar.gz"
  sha256 "a684bebf302de2ace39bc8e7adff6a51bde22f2c53c20a048454ea92ab37ba7b"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.9.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "a26b23fa3ce69f12093f29dad8b616246dce957e44a99b594086d6ff91675c9c"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.9.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "b419da6ee8cde0d6968ba0deb3880aea4c436ca193c1a1d59ee96d958c8c8b43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.9.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03c0f2965d51156c88c14e8300de366eb56097ba99c6cb9a1a50f415abaee9e6"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
