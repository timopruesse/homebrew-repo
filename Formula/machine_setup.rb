class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.10.0.tar.gz"
  sha256 "f842f393f3b74c9c4c326245675c9ab097cd04d0b3e37c44d75715db7b8b95ee"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.10.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "ef296cdcc54ab7c605d85cae6119c4c1187460d27ed7c1ae8d3d6137dd0b4a5a"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.10.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "ac0812bf5d216d65cd21f1e14e1225bd7e1b27ff447d5ad623114ee27d48343f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.10.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a641707b5e04733bc7390ecf507aa4e8294245ff0ad818cf15d9c72cb90f3155"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
