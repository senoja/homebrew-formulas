class KubeLocate < Formula
  desc "CLI tool for navigating different contexts and namespaces"
  homepage "https://github.com/senoja/kube-locate"
  url "https://github.com/senoja/kube-locate/releases/download/v0.1.1/kube-locate-v0.1.1-x86_64-apple-darwin.tar.gz"
  sha256 "8496fb89d57533557fd9425f841118c134410a0bb5c22f73ebeface1eb68f87d"
  head "https://github.com/senoja/kube-locate.git"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "klo"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/klo -h 2>&1")
  end
end
