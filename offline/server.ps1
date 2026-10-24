# 本機網頁伺服器：只在這台電腦 (localhost) 提供 OCR 單據分類，其他電腦無法連入
$root = [IO.Path]::GetFullPath((Split-Path -Parent $MyInvocation.MyCommand.Path)).TrimEnd('\') + '\'
$mime = @{ '.html'='text/html; charset=utf-8'; '.js'='text/javascript; charset=utf-8'; '.json'='application/json'; '.wasm'='application/wasm'; '.css'='text/css' }
$listener = $null
foreach ($p in 8765..8785) {
  try { $l = New-Object System.Net.HttpListener; $l.Prefixes.Add("http://localhost:$p/"); $l.Start(); $listener = $l; $port = $p; break } catch { }
}
if (-not $listener) { Write-Host '無法啟動本機伺服器（8765-8785 埠都被占用）'; Read-Host '按 Enter 結束'; exit 1 }
$url = "http://localhost:$port/index.html"
Write-Host "OCR 單據分類已啟動：$url"
Write-Host '使用期間請勿關閉此視窗；用完直接關閉視窗即可。'
Start-Process $url
while ($listener.IsListening) {
  $ctx = $listener.GetContext()
  try {
    $rel = [Uri]::UnescapeDataString($ctx.Request.Url.AbsolutePath).TrimStart('/')
    if ($rel -eq '') { $rel = 'index.html' }
    $full = [IO.Path]::GetFullPath((Join-Path $root $rel))
    if ($full.StartsWith($root, [StringComparison]::OrdinalIgnoreCase) -and [IO.File]::Exists($full)) {
      $bytes = [IO.File]::ReadAllBytes($full)
      $ext = [IO.Path]::GetExtension($full).ToLower()
      if ($mime.ContainsKey($ext)) { $ctx.Response.ContentType = $mime[$ext] } else { $ctx.Response.ContentType = 'application/octet-stream' }
      $ctx.Response.ContentLength64 = $bytes.Length
      $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
    } else { $ctx.Response.StatusCode = 404 }
  } catch { } finally { $ctx.Response.Close() }
}
