class HelloAl < Formula
  desc "Homebrew tap for bottles built for armv7 Alpine proot-distro distro on termux"
  homepage "https://github.com/The-Quantum-Engineering-Guild/homebrew-hello"
  url "https://github.com/The-Quantum-Engineering-Guild/homebrew-hello/releases/download/1.0.1/hello-al.tar.gz"
  sha256 "2ca7a3946b9ae15d134e5c97b39a9cfb8b9f4fa67a736e546bc83921e52450fd"
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
