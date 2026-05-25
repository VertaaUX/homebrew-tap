class Vertaa < Formula
  desc "VertaaUX CLI — UX, accessibility, and conversion audits from the terminal"
  homepage "https://vertaaux.ai"
  url "https://registry.npmjs.org/@vertaaux/cli/-/cli-0.8.1.tgz"
  sha256 "a909d61d2159a8139d0fa0c37e5e0f792ba27d1d3c72db2343e17394988612fe"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/vertaa"]
  end

  test do
    assert_match "0.8.1", shell_output("#{bin}/vertaa --version")
  end
end
