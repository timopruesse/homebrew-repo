class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.13.1.tar.gz"
  sha256 "812a518d312dc3696ba06c49f9d96b3af7c47945cfb1dffc045ce7e7154c0a6e"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.13.1/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "d3ad088f5ee424a57239f61dee68462b6789d7536b4935b42422c07b470ce083"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.13.1/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "b4475f2a776d6379485fc42aa466c7ac11f24625e8be4d1e71b68b55817be974"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.13.1/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1b3ea5125fe4e7d8daf734a40e93360b39ccd21bbe84163cd710c636d70cf9d"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
