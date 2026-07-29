class OaiSmoke < Formula
  desc "Privacy-conscious smoke tests for OpenAI-compatible APIs"
  homepage "https://github.com/airouter-dev/openai-compatible-api-smoke-test"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/airouter-dev/openai-compatible-api-smoke-test/releases/download/v#{version}/oai-smoke_#{version}_darwin_arm64.tar.gz"
      sha256 "746b25e92922f9b0580b0f3581e51f8d6124afd794a4d44f38bf527c6259f98c"
    end
    on_intel do
      url "https://github.com/airouter-dev/openai-compatible-api-smoke-test/releases/download/v#{version}/oai-smoke_#{version}_darwin_amd64.tar.gz"
      sha256 "bc10f075989160fbf2ef3df6971181fc25472d1453cc26c781de22e6258c28b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/airouter-dev/openai-compatible-api-smoke-test/releases/download/v#{version}/oai-smoke_#{version}_linux_arm64.tar.gz"
      sha256 "6a0b70aa3a7f04469b6e9dcced4f7eb4b3571e883aaa1843ee0423f80082d4bc"
    end
    on_intel do
      url "https://github.com/airouter-dev/openai-compatible-api-smoke-test/releases/download/v#{version}/oai-smoke_#{version}_linux_amd64.tar.gz"
      sha256 "4cae8f6dcd6195bde1b015c565a46f1deb012926bb67a50d9283a5ddfc44f9fa"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "oai-smoke"
  end

  test do
    require "json"

    output = shell_output(
      "#{bin}/oai-smoke --base-url http://127.0.0.1:1/v1 --allow-http --no-auth --models-only --json",
      3,
    )
    report = JSON.parse(output)

    assert_equal "oai-smoke/v1", report.fetch("schema")
    assert_equal false, report.fetch("success")
    assert_equal "network", report.fetch("error_class")
    assert_equal "/v1/models", report.fetch("checks").fetch(0).fetch("path")
    refute_match(/authorization|bearer/i, output)
    assert_equal "oai-smoke #{version}", shell_output("#{bin}/oai-smoke --version").strip
  end
end
