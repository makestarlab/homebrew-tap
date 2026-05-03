class MakestarAdminCli < Formula
  desc "Command-line tools for Makestar admin operations"
  homepage "https://github.com/makestarlab/makestar-admin-cli-releases"
  url "https://github.com/makestarlab/makestar-admin-cli-releases/releases/download/r2026.05.04.2/makestar-admin-darwin-arm64.zip"
  version "0.2.4"
  sha256 "64b691f2602148a30cf854c2247b17aa42c82059bbfc45c5036f48e7f274304f"
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
