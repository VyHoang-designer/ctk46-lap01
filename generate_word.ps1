$testImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_test_page.png"))
$homeImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_home_page.png"))

$html = @"
<html xmlns:o='urn:schemas-microsoft-com:office:office'
      xmlns:w='urn:schemas-microsoft-com:office:word'
      xmlns='http://www.w3.org/TR/REC-html40'>
<head>
<meta charset="utf-8">
<style>
body { font-family: 'Times New Roman', serif; font-size: 13pt; margin: 2.54cm; line-height: 1.5; }
h1 { font-size: 18pt; color: #1a56db; text-align: center; margin-bottom: 20pt; }
h2 { font-size: 15pt; color: #1e40af; border-bottom: 2px solid #1e40af; padding-bottom: 4pt; margin-top: 20pt; }
h3 { font-size: 13pt; color: #374151; margin-top: 12pt; }
pre { background-color: #f3f4f6; border: 1px solid #d1d5db; padding: 10pt; font-family: 'Consolas', monospace; font-size: 10pt; white-space: pre-wrap; }
code { font-family: 'Consolas', monospace; font-size: 10pt; background-color: #f3f4f6; padding: 1pt 3pt; }
table { border-collapse: collapse; width: 100%; margin: 10pt 0; }
th, td { border: 1px solid #000; padding: 6pt 10pt; text-align: left; }
th { background-color: #dbeafe; font-weight: bold; }
.role-box { background-color: #eff6ff; border-left: 4px solid #2563eb; padding: 8pt 12pt; margin: 8pt 0; }
.screenshot { text-align: center; margin: 15pt 0; }
.screenshot img { max-width: 500px; border: 1px solid #ccc; }
.caption { font-style: italic; color: #6b7280; font-size: 11pt; text-align: center; margin-top: 5pt; }
.success { color: #16a34a; font-weight: bold; }
.info { font-size: 11pt; color: #6b7280; }
</style>
</head>
<body>

<h1>Bai tap tu lam - Phan 1<br><span style="font-size:13pt; color:#6b7280;">Project: ctk46-lab01 | Next.js App Router</span></h1>

<p class="info"><b>Ho va ten:</b> Vy Hoang &nbsp;&nbsp;|&nbsp;&nbsp; <b>Ngay thuc hien:</b> 16/04/2026</p>

<hr>

<h2>Cau 1: Xac dinh cac file dac biet hien co trong src/app/</h2>

<p>Mo project <code>ctk46-lab01</code> va liet ke cau truc thu muc <code>src/app/</code>:</p>

<pre>
src/app/
+-- about/            (Thu muc route /about)
+-- blog/             (Thu muc route /blog va route dong [slug])
+-- contact/          (Thu muc route /contact)
+-- projects/         (Thu muc route /projects)
+-- error.js          (Giao dien hien thi khi co loi)
+-- favicon.ico       (Icon cua trang web)
+-- globals.css       (File CSS toan cuc)
+-- layout.js         (Root layout - bao boc toan bo app)
+-- loading.js        (Giao dien hien thi khi dang tai trang)
+-- not-found.js      (Trang 404 tuy chinh)
+-- page.js           (Trang chu /)
+-- template.js       (Tuong tu layout nhung tao instance moi moi khi chuyen trang)
</pre>

<p><b>Cac file dac biet theo quy uoc Next.js App Router:</b></p>

<table>
<tr><th>File</th><th>Vai tro</th><th>Pham vi</th></tr>
<tr><td>page.js</td><td>Noi dung trang - <b>bat buoc</b> de tao route</td><td>Route hien tai</td></tr>
<tr><td>layout.js</td><td>Layout bao boc trang (navbar, sidebar, footer)</td><td>Route hien tai + tat ca route con</td></tr>
<tr><td>loading.js</td><td>Giao dien hien thi khi dang tai trang</td><td>Route hien tai + tat ca route con</td></tr>
<tr><td>error.js</td><td>Giao dien hien thi khi co loi</td><td>Route hien tai + tat ca route con</td></tr>
<tr><td>not-found.js</td><td>Trang 404 tuy chinh</td><td>Route hien tai</td></tr>
<tr><td>template.js</td><td>Tuong tu layout nhung tao instance moi khi chuyen trang</td><td>Route hien tai + tat ca route con</td></tr>
<tr><td>globals.css</td><td>File CSS ap dung toan cuc cho toan bo ung dung</td><td>Toan cuc</td></tr>
</table>

<hr>

<h2>Cau 2: Doc noi dung file layout.js va page.js, xac dinh vai tro</h2>

<h3>2.1. File layout.js (Root Layout)</h3>

<pre>
import { Geist, Geist_Mono } from "next/font/google";
import Link from "next/link";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata = {
  title: "CTK46-Lap01 - Portfolio",
  description: "Portfolio ca nhan cua Vy Hoang",
};

export default function RootLayout({ children }) {
  return (
    &lt;html lang="vi"&gt;
      &lt;body className={...}&gt;
        &lt;header&gt;...Navbar...&lt;/header&gt;
        &lt;main&gt;{children}&lt;/main&gt;
        &lt;footer&gt;...Footer...&lt;/footer&gt;
      &lt;/body&gt;
    &lt;/html&gt;
  );
}
</pre>

<div class="role-box">
<b>Vai tro cua layout.js:</b><br>
- Day la <b>Root Layout</b>, file bat buoc o cap cao nhat cua ung dung Next.js.<br>
- Dinh nghia cau truc HTML co ban (the &lt;html&gt; va &lt;body&gt;).<br>
- Chua <b>Header/Navbar</b> voi cac lien ket dieu huong (Trang chu, Gioi thieu, Blog, Du an, Lien he).<br>
- Chua <b>Footer</b> hien thi thong tin ban quyen.<br>
- Nhan <code>{children}</code> lam tham so va hien thi noi dung cua trang con ben trong the &lt;main&gt;.<br>
- Thiet lap metadata (title, description) cho SEO.<br>
- Import Google Fonts (Geist, Geist_Mono) va file globals.css.<br>
- <b>Giu nguyen state</b> khi chuyen giua cac trang con (khong re-render).
</div>

<h3>2.2. File page.js (Trang chu /)</h3>

<pre>
import Link from 'next/link';

export default function Home() {
  return (
    &lt;div className="min-h-screen p-8 sm:p-20 ..."&gt;
      &lt;main&gt;
        &lt;h1&gt;Xin chao, toi la Vy Hoang&lt;/h1&gt;
        &lt;p&gt;Day la trang Portfolio va Blog ca nhan cua toi...&lt;/p&gt;
        &lt;div&gt;
          &lt;Link href="/about"&gt;Tim hieu them ve toi&lt;/Link&gt;
          &lt;Link href="/contact"&gt;Lien he&lt;/Link&gt;
        &lt;/div&gt;
      &lt;/main&gt;
    &lt;/div&gt;
  );
}
</pre>

<div class="role-box">
<b>Vai tro cua page.js:</b><br>
- Day la file dinh nghia <b>noi dung chinh cua trang chu</b> (route <code>/</code>).<br>
- Hien thi loi chao, mo ta ngan ve ban than.<br>
- Cung cap 2 nut dieu huong: "Tim hieu them ve toi" (den /about) va "Lien he" (den /contact).<br>
- Noi dung nay se duoc render ben trong the <code>&lt;main&gt;{children}&lt;/main&gt;</code> cua layout.js.
</div>

<hr>

<h2>Cau 3: Tao thu muc src/app/test/ va kiem tra routing</h2>

<p><b>Buoc 1:</b> Tao file <code>src/app/test/page.js</code> voi noi dung:</p>

<pre>
export default function TestPage() {
  return (
    &lt;div className="min-h-screen flex items-center justify-center"&gt;
      &lt;div className="text-center"&gt;
        &lt;h1&gt;Trang Test&lt;/h1&gt;
        &lt;p&gt;Day la trang test de kiem tra routing hoat dong trong Next.js App Router.&lt;/p&gt;
        &lt;p&gt;Routing hoat dong thanh cong!&lt;/p&gt;
      &lt;/div&gt;
    &lt;/div&gt;
  );
}
</pre>

<p><b>Buoc 2:</b> Chay <code>npm run dev</code> va truy cap <code>http://localhost:3000/test</code></p>

<p><b>Ket qua:</b></p>

<div class="screenshot">
<img src="data:image/png;base64,$testImg" alt="Trang Test" />
<p class="caption">Hinh 1: Ket qua truy cap http://localhost:3000/test - Routing hoat dong thanh cong</p>
</div>

<p class="success">=> Ket luan: Routing hoat dong thanh cong! Chi can tao thu muc voi file page.js ben trong src/app/ la Next.js App Router se tu dong tao route tuong ung.</p>

<p><b>Tham khao them - Trang chu:</b></p>

<div class="screenshot">
<img src="data:image/png;base64,$homeImg" alt="Trang chu" />
<p class="caption">Hinh 2: Trang chu http://localhost:3000/ hien thi dung noi dung page.js</p>
</div>

<hr>

<h2>Cau 4: Xoa thu muc test/ sau khi xac nhan</h2>

<p>Sau khi da xac nhan routing hoat dong thanh cong, xoa thu muc <code>test/</code> bang lenh:</p>

<pre>
Remove-Item -Recurse -Force src/app/test
</pre>

<p><b>Kiem tra lai cau truc thu muc sau khi xoa:</b></p>

<pre>
src/app/
+-- about/
+-- blog/
+-- contact/
+-- projects/
+-- error.js
+-- favicon.ico
+-- globals.css
+-- layout.js
+-- loading.js
+-- not-found.js
+-- page.js
+-- template.js
</pre>

<p class="success">=> Thu muc test/ da duoc xoa thanh cong. Cau truc project tro lai nhu ban dau.</p>

<hr>
<p style="text-align: center; color: #9ca3af; font-size: 11pt;">--- Het Bai tap tu lam Phan 1 ---</p>

</body>
</html>
"@

$html | Out-File -FilePath "C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\BaiTapTuLam_Phan1.doc" -Encoding utf8
Write-Host "File Word created successfully!"
