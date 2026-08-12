# iCloud Mail for Windows

iCloud Mail desktop app for Windows. Loads [https://www.icloud.com/mail](https://www.icloud.com/mail) in a native **Tauri / WebView2** shell.

## Development

Requires Rust (MSVC), WebView2, and Bun. Sibling crates:

- `Projects/tauri-tray-base`
- `Projects/tauri-icloud-base`

```bash
bun install
bun run icon
bun run dev
```

## License

[MIT](LICENSE)
