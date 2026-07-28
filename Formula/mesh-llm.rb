class MeshLlm < Formula
  desc "Local mesh-llm CLI runtime"
  homepage "https://github.com/Mesh-LLM/mesh-llm"
  url "https://github.com/Mesh-LLM/mesh-llm/releases/download/v0.74.0/mesh-llm-v0.74.0-aarch64-apple-darwin.tar.gz"
  sha256 "b399c819d7c57584add3a047cb1cb45b5862583120e608608e6afb62d400cb36"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64

  def install
    # Homebrew strips the archive's single mesh-bundle/ top-level directory.
    bin.install "mesh-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mesh-llm --version")
  end
end
