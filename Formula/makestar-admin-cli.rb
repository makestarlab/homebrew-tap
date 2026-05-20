class MakestarAdminCli < Formula
  desc "Command-line tools for Makestar admin operations"
  homepage "https://github.com/makestarlab/makestar-admin-cli-releases"
  url "https://github.com/makestarlab/makestar-admin-cli-releases/releases/download/r2026.05.20/makestar-admin-darwin-arm64.zip"
  version "0.2.10"
  sha256 "231fb5338159ae72d536cdabb29b436ab600f56eddf3317cd9b845ad04d11143"
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
