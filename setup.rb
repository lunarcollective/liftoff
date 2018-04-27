class Package < Struct.new(:command, :name, :opts)
  def install!
    if not_installed?
      system("#{command} install #{name} #{opts.join(" ")}")
    end
  end

  def not_installed?
    !exists?
  end

  def exists?
    system("#{command} info | grep #{name}")
  end
end

def Bin(name, opts = [])
  Package.new("brew", name, opts)
end

def App(name, opts = [])
  Package.new("brew cask", name, opts)
end

def Node(name, opts = [])
  Package.new("npm -g", name, opts)
end

def Atom(name, opts = [])
  Package.new("apm", name, opts)
end


APPS = [
  App("google-chrome"),
  App("1password"),
  App("elm-platform"),
  App("macdown"),
  App("atom"),
  App("slack"),
  App("dropbox"),
  App("kap"),
  App("sip")
]

BINS = [
  Bin(:openssl),
  Bin(:git, ["--with-brewed-openssl"]),
  Bin(:node, ["--with-openssl"]),
  Bin(:phantomjs),
  Bin(:rust),
  Bin(:sqlite),
  Bin(:postgresql),
  Bin(:tmux),
  Bin(:tree),
  Bin(:ack),
  Bin(:elixir),
  Bin(:ffmpeg),
  Bin(:hub),
  Bin(:heroku),
  Bin(:vim, [
    "--HEAD",
    "--with-custom-ruby",
    "--with-python3",
    "--with-lua",
    "--with-client-server"
  ])
]

PACKAGES = [
  Node("create-elm-app"),
  Node("elm-format"),
  Node("jest"),
  Node("react"),
  Node("prettier"),
  Atom("atom-beautify"),
  Atom("atom-elixir"),
  Atom("atom-elixir-formatter"),
  Atom("cucumber"),
  Atom("elm-format"),
  Atom("elmjutsu"),
  Atom("hyperclick"),
  Atom("intentions"),
  Atom("language-elixir"),
  Atom("language-elm"),
  Atom("language-slim"),
  Atom("linter"),
  Atom("linter-ui-default"),
  Atom("prettier-atom"),
  Atom("react"),
  Atom("teletype"),
  Atom("vim-mode-plus")
]

[BINS, APPS, PACKAGES].each do |sets|
  sets.each(&:install!)
end

