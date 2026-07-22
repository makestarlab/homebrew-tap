class MakestarAdminCli < Formula
  desc "Command-line tools for Makestar admin operations"
  homepage "https://github.com/makestarlab/makestar-admin-cli-releases"
  url "https://github.com/makestarlab/makestar-admin-cli-releases/releases/download/r2026.07.22/makestar-admin-darwin-arm64.zip"
  version "0.2.14"
  sha256 "fd70037034e02dfbc0c67a34f225ab3f22a259be15dd56b7f0f4ce12d3c4802a"
  license :cannot_represent

  def install
    bundle_root = (buildpath/"makestar-admin").directory? ? buildpath/"makestar-admin" : buildpath
    libexec.install bundle_root.children
    bin.write_exec_script libexec/"makestar-admin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/makestar-admin --version")
  end
end
