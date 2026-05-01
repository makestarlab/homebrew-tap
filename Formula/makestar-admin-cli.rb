class MakestarAdminCli < Formula
  desc "Command-line tools for Makestar admin operations"
  homepage "https://github.com/makestarlab/makestar-admin-cli-releases"
  url "https://github.com/makestarlab/makestar-admin-cli-releases/releases/download/r2026.05.01.2/makestar-admin-darwin-arm64.zip"
  version "0.2.2"
  sha256 "f10b41ad3e6e485248649e156dee154eaf9f0e20cd0feb781137d478b5cf5b72"
  license :cannot_represent

  def install
    bin.install "makestar-admin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/makestar-admin --version")
  end
end
