class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.4.7.tar.gz"
  sha256 "3a83f4c036d74a42e9ce2ba2669590df037b8840524f99c0e1be8f7faff72629"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.7/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "3a130c1653e07838caff7f6170512c7e1f7dcfe0aaa290de8fb03b10a3e33738"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.7/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "b2b35b6c671463203aeaf241af5b1e9ff9e90841cd87f2e5cab89a8ff5595579"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.7/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e55edb6e6e2ac7d13d8ca5ff09c2fb84bf27cb9395e4cc4afe228640e852115e"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
