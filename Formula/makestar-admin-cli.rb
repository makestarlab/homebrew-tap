class MakestarAdminCli < Formula
  desc "Command-line tools for Makestar admin operations"
  homepage "https://github.com/makestarlab/makestar-admin-cli-releases"
  url "https://github.com/makestarlab/makestar-admin-cli-releases/releases/download/r2026.07.24/makestar-admin-darwin-arm64.zip"
  version "0.2.16"
  sha256 "bca9f97743d8e5235671532e150132b1d42de57abff354e1f59148eac6eada14"
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
