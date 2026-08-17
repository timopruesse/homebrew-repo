class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.8.1.tar.gz"
  sha256 "5124aa0bd644287c04fe038eb90672e9f19fcbdf47371cb00588ccf8a1fd6d4c"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.8.1/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "bebf7148a9989757097a399bc68bcd92de3089bbcee54a38fe3045fc2ae0d7d8"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.8.1/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "3ede0c72f5869642ec1c1d8a3ce6331b6814598a41df8f235212c60ce1d3eeea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.8.1/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a290138d3241e1e5adecf7537c90416e4b2f0ebbce41eb82344f877c7703fbfc"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
