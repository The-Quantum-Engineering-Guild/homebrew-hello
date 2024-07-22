class HelloAl < Formula
  desc "Homebrew tap for bottles built for armv7 Alpine proot-distro distro on termux"
  homepage "https://github.com/The-Quantum-Engineering-Guild/homebrew-hello"
  url "https://github.com/The-Quantum-Engineering-Guild/homebrew-hello/releases/download/1.0.1/test-cpp-musl.tar.gz", using: :git
  sha256 "f33b5a6349b78a399cba35ddcdb95b69d7dfe084f64ded0535fce6c1a0154094"
  license ""
  head "https://github.com/The-Quantum-Engineering-Guild/homebrew-hello.git"

  def install
    bin.install "hello-al"
  end

  def caveats
    <<~EOS
      This formula (bottle by now?) only works with musl based proot-distro distros on termux, tested on Alpine linux.
    EOS
  end

  test do
    assert_match "This is a test, you lab rat.", shell_output("#{bin}/hello-al", 2)
  end
end
