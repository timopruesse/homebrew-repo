class MachineSetup < Formula
  desc "CLI tool with TUI for automating machine configuration and setup tasks"
  homepage "https://github.com/timopruesse/machine_setup"
  url "https://github.com/timopruesse/machine_setup/archive/refs/tags/v2.7.2.tar.gz"
  sha256 "7ba70317a7fc4acf99a7eac9ec85c8513484802a70b7a9593eb40be847709b70"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.2/machine_setup-aarch64-apple-darwin.tar.gz"
      sha256 "8af9013c5c70dd83fbc019aa5a162aaf7e61e9200947d30f50adcf43df299aaf"
    end
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.2/machine_setup-x86_64-apple-darwin.tar.gz"
      sha256 "ae42adc846414fc7861a2d0fdc52e0f8e39929e2f4780a5047b6a1944f59508c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timopruesse/machine_setup/releases/download/v2.7.2/machine_setup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42c9d3990f11cb006bd243106655ef8baf227dda9e2d0fd65018661231531614"
    end
  end

  def install
    bin.install "machine_setup"
  end

  test do
    assert_match "machine_setup", shell_output("#{bin}/machine_setup --version")
  end
end
