class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.7.1.tar.gz"
  sha256 "054b75b85e59c4a9a3b1235bb7c1143a383de1f4356922ded5803d78565afe5f"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.1/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "60b134beab91b16f12112168e93c80eeaab9ac26c4f30761f9a70d6bfd8fa117"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.1/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "5443b5932fef61abe50a25d57d08220be7b478d50612efebca95f02c4b4ffc88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.1/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0bcd6c8ef9376fdb549e918c48dc75c93feb4f1fe68b6f883d09472b01ff1f3"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
