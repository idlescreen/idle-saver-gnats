# IdleScreen Saver — Gnats (`idle-saver-gnats`)

Official **gnats** screensaver plugin for **[IdleScreen](https://idlescreen.github.io)**.

Website: **[https://idlescreen.github.io](https://idlescreen.github.io)**

---

## ⚡ Quick Install

```bash
curl -fsSL https://idlescreen.github.io/packages/install.sh | sh
```

Or install standard package:

```bash
sudo dnf install idlescreen
```

---

## 🚀 Usage & Preview

Preview this screensaver module directly:

```bash
idlescreen preview gnats
```

---

## 🛠️ Build from Source

Requires the engine checked out for `idle-api` path dependencies:

```bash
git clone https://github.com/idlescreen/idle-saver-gnats.git
cd idle-saver-gnats
git clone https://github.com/idlescreen/idle.git idle
cargo build --release
```

---

## License

Apache-2.0. See [LICENSE](LICENSE).
