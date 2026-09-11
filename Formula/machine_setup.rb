class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.12.0.tar.gz"
  sha256 "79635ad6e290e59e9c5a92e6c60b90f856c3807a0d92719455c40a719a756f29"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.12.0/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "610c36d862a593f184da8302c2ef9ec13a154401f6aba0f71e5bb8668236f015"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.12.0/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "10fc671cf0473d45a195682ced5a4976a400512909241b4c826f865546a1f044"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.12.0/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e336bd13583e367139dda4321793e3e89a04ee3c88ab52f601fd58ef8dedcd8"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
