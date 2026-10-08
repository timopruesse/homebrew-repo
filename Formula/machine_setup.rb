class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.13.0.tar.gz"
  sha256 "4efbbcb1ceb83636229a0f36a015265d3266bd124a013cfe640fda286e38e01f"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.13.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "5823b1e171a89fedd95a84af6bd387263a12e97257db61620918e97ecd843a6f"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.13.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "d85c4317b75427cf5aa1b73c1b44a74c028ce89a8fe5afa119a09f8dcf16566b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.13.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bb8efe263587f320869cb492237bdaf10ca2f54236ecc9ed45f5b501434ffb3"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
