class HelloAl < Formula
  desc "Homebrew tap for bottles built for armv7 Alpine proot-distro distro on termux"
  homepage "https://github.com/The-Quantum-Engineering-Guild/homebrew-hello"
  url "https://github.com/The-Quantum-Engineering-Guild/homebrew-hello/releases/download/1.0.1/test-cpp-musl.tar.gz"
  sha256 "f33b5a6349b78a399cba35ddcdb95b69d7dfe084f64ded0535fce6c1a0154094"
  license ""

  def install
    system "./configure", "--disable-silent-rules", *std_configure_args
  end

  def caveats
    <<~EOS
      This formula (bottle by now?) only works with musl based proot-distro distros on termux, tested on Alpine linux.
    EOS
  end

  test do
    shell_output(test-cpp-al) => "This is a test, you lab rat."
    system "false"
  end
end
