class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.6.1.tar.gz"
  sha256 "d98e247805d9816425e1504ae7aebd28f7314e1456a0f71756d5dd38eb3512c8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.6.1/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "9b92e33243666c19f02c1f82473a79c78717eba68a4ff125eb27c814220e4161"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.6.1/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "0c35f16fb4267ade2dbcbb726f1b9979d178ec45104a7ad5f7b06193d589cc88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.6.1/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fb24744b3b72558af6ccb177146c0f3b4a505dd0e61479d2273fc606746a30a"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
