class MakestarAdminCli < Formula
  desc "Command-line tools for Makestar admin operations"
  homepage "https://github.com/makestarlab/makestar-admin-cli-releases"
  url "https://github.com/makestarlab/makestar-admin-cli-releases/releases/download/r2026.05.15.2/makestar-admin-darwin-arm64.zip"
  version "0.2.7"
  sha256 "d1c915a632d5a4b0a6c70dbc0e8a06c8ee3d691a2aa5a15a12c46210f24ac02f"
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
