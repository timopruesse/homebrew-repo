class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.4.6.tar.gz"
  sha256 "defa6a853dd875525cb8ad81fb794d1e77a532a3aa5676321ce1f1a69fd8e8b9"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.6/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "8ee09d892d760a474ef9579259a02217f1fc42a00b1900b1e970fb1b4382e00e"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.6/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "369f24cdf3ec4b70b89c61e02ebca889278419519d8ac16e9d2d7529b25a5834"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.6/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "568921120d77b5239fe32b0256400e3a18c7da61f22af45c4144c4035602bdff"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
