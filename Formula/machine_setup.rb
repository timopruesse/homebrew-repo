class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.4.2.tar.gz"
  sha256 "690cdbfd2a9426791937618158ed9c42dcb6f2e1305cb184c56d5c22bf00121e"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.2/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "3d5a199d1a7cd069128bad476ef2e5f0dfa5e2283f530bc25cc6ed84f6aa99f5"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.2/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "6a8ac3af89754c20b108bb98daca30eb11872026ef4f58430f4334720d0d58df"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
