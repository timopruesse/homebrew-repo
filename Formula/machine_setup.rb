class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.4.4.tar.gz"
  sha256 "5d4f1666590359a9ca7f8f49f34d65b9f6e854502358255c381784b31a9e97eb"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.4/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "b74ca96d328ea4435a5637da08e35e0cf2fbc2d438060ba748485e5bab86b83a"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.4/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "dc079c2efa77822c325d848594a4ce0d7780e70e9c1fa7ee20c58992a4dd3f17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.4.4/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bef3eacd3c68806846834221893d634511ca0be2a6a97aabb8ea84fa946e88fd"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
