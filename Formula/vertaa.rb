class Vertaa < Formula
  desc "VertaaUX CLI — UX, accessibility, and conversion audits from the terminal"
  homepage "https://vertaaux.ai"
  url "https://registry.npmjs.org/@vertaaux/cli/-/cli-0.6.0.tgz"
  sha256 "e6ddd7aad7e844764f2ac1339afe3a3992c6df8cc5f27f863c40f736546c31e0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/vertaa"]
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/vertaa --version")
  end
end
