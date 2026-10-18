class Minilaunch < Formula
  desc "Native macOS app launcher with fuzzy search"
  homepage "https://github.com/aboredworm/minilaunch"
  url "https://github.com/aboredworm/minilaunch/releases/download/v0.1/minilaunch-0.1.tar.gz"
  sha256 "3c75e582d371de0f3264d420433cb7e96fa9ec8682434283584f7c1799784122"
  head "https://github.com/aboredworm/minilaunch.git", branch: "main"

  depends_on macos: :monterey

  def install
    system "./build.sh"
    libexec.install "build/MiniLaunch.app"
    (bin/"minilaunch").write_env_script libexec/"MiniLaunch.app/Contents/MacOS/MiniLaunch", {}
    pkgshare.install "examples/config.example" if File.exist?("examples/config.example")
    pkgshare.install "config.example" if File.exist?("config.example")
  end

  def caveats
    <<~EOS
      Show or hide the launcher:
        minilaunch --toggle
      Quit the background app:
        minilaunch --quit

      Bind `#{opt_bin}/minilaunch --toggle` to your keyboard shortcut.
      Quit MiniLaunch before upgrading. No login item is installed.
      A sample configuration is in #{opt_pkgshare}/config.example.
    EOS
  end

  test do
    assert_match "Search and app discovery tests passed", shell_output("#{bin}/minilaunch --test")
    assert_match "Usage: MiniLaunch", shell_output("#{bin}/minilaunch --invalid 2>&1", 2)
  end
end
